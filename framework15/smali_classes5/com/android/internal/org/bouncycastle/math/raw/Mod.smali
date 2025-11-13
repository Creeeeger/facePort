.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# static fields
.field private static final blacklist M30:I = 0x3fffffff

.field private static final blacklist M32L:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I[I)V
    .locals 2

    array-length v0, p0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_0
    return-void
.end method

.method private static blacklist add30(I[I[I)I
    .locals 5

    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public static blacklist checkedModOddInverse([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkedModOddInverseVar([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist cnegate30(II[I)V
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    xor-int/2addr v3, p1

    sub-int/2addr v3, p1

    add-int/2addr v0, v3

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p2, v2

    shr-int/lit8 v0, v0, 0x1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget v2, p2, v1

    xor-int/2addr v2, p1

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    aput v0, p2, v1

    return-void
.end method

.method private static blacklist cnormalize30(II[I[I)V
    .locals 7

    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x0

    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    :goto_0
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v3, v0, :cond_0

    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    xor-int v6, v5, p1

    sub-int/2addr v6, p1

    add-int/2addr v1, v6

    and-int/2addr v4, v1

    aput v4, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget v3, p2, v0

    aget v5, p3, v0

    and-int/2addr v5, v2

    add-int/2addr v3, v5

    xor-int v5, v3, p1

    sub-int/2addr v5, p1

    add-int/2addr v1, v5

    aput v1, p2, v0

    const/4 v1, 0x0

    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    and-int v6, v1, v4

    aput v6, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget v3, p2, v0

    aget v4, p3, v0

    and-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    aput v1, p2, v0

    return-void
.end method

.method private static blacklist decode30(I[II[II)V
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    if-lez p0, :cond_1

    :goto_1
    const/16 v3, 0x20

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    add-int/lit8 v3, p2, 0x1

    aget p2, p1, p2

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1e

    move p2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v1

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 p0, p0, -0x20

    move p4, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist divsteps30(III[I)I
    .locals 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p1

    move/from16 v5, p2

    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    :goto_0
    const/16 v8, 0x1e

    const/4 v9, 0x1

    if-ge v7, v8, :cond_0

    shr-int/lit8 v8, v0, 0x1f

    and-int/lit8 v10, v6, 0x1

    neg-int v10, v10

    xor-int v11, v5, v8

    sub-int/2addr v11, v8

    xor-int v12, v1, v8

    sub-int/2addr v12, v8

    xor-int v13, v2, v8

    sub-int/2addr v13, v8

    and-int v14, v11, v10

    add-int/2addr v6, v14

    and-int v14, v12, v10

    add-int/2addr v3, v14

    and-int v14, v13, v10

    add-int/2addr v4, v14

    and-int/2addr v8, v10

    xor-int v14, v0, v8

    add-int/lit8 v15, v8, 0x1

    sub-int v0, v14, v15

    and-int v14, v6, v8

    add-int/2addr v5, v14

    and-int v14, v3, v8

    add-int/2addr v1, v14

    and-int v14, v4, v8

    add-int/2addr v2, v14

    shr-int/2addr v6, v9

    shl-int/2addr v1, v9

    shl-int/2addr v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    aput v1, p3, v7

    aput v2, p3, v9

    const/4 v7, 0x2

    aput v3, p3, v7

    const/4 v7, 0x3

    aput v4, p3, v7

    return v0
.end method

.method private static blacklist divsteps30Var(III[I)I
    .locals 17

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p1

    move/from16 v5, p2

    const/16 v6, 0x1e

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    :goto_0
    const/4 v8, -0x1

    shl-int v9, v8, v7

    or-int/2addr v9, v6

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v9

    shr-int/2addr v6, v9

    shl-int/2addr v1, v9

    shl-int/2addr v2, v9

    sub-int/2addr v0, v9

    sub-int/2addr v7, v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-gtz v7, :cond_0

    nop

    const/4 v8, 0x0

    aput v1, p3, v8

    aput v2, p3, v11

    aput v3, p3, v10

    const/4 v8, 0x3

    aput v4, p3, v8

    return v0

    :cond_0
    if-gez v0, :cond_2

    neg-int v0, v0

    move v11, v5

    move v5, v6

    neg-int v6, v11

    move v12, v1

    move v1, v3

    neg-int v3, v12

    move v13, v2

    move v2, v4

    neg-int v4, v13

    add-int/lit8 v14, v0, 0x1

    if-le v14, v7, :cond_1

    move v14, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v0, 0x1

    :goto_1
    rsub-int/lit8 v15, v14, 0x20

    ushr-int/2addr v8, v15

    and-int/lit8 v8, v8, 0x3f

    mul-int v15, v5, v6

    mul-int v16, v5, v5

    add-int/lit8 v16, v16, -0x2

    mul-int v15, v15, v16

    and-int v10, v15, v8

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v0, 0x1

    if-le v10, v7, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v0, 0x1

    :goto_2
    move v14, v10

    rsub-int/lit8 v10, v14, 0x20

    ushr-int/2addr v8, v10

    and-int/lit8 v8, v8, 0xf

    add-int/lit8 v10, v5, 0x1

    and-int/lit8 v10, v10, 0x4

    shl-int/2addr v10, v11

    add-int/2addr v10, v5

    neg-int v11, v10

    mul-int/2addr v11, v6

    and-int v10, v11, v8

    :goto_3
    mul-int v11, v5, v10

    add-int/2addr v6, v11

    mul-int v11, v1, v10

    add-int/2addr v3, v11

    mul-int v11, v2, v10

    add-int/2addr v4, v11

    goto :goto_0
.end method

.method private static blacklist encode30(I[II[II)V
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    if-lez p0, :cond_1

    const/16 v3, 0x1e

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, p2, 0x1

    aget p2, p1, p2

    int-to-long v5, p2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x20

    move p2, v4

    :cond_0
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v1

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1e

    add-int/lit8 p0, p0, -0x1e

    move p4, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist getMaximumDivsteps(I)I
    .locals 2

    mul-int/lit8 v0, p0, 0x31

    const/16 v1, 0x2e

    if-ge p0, v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    :goto_0
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static blacklist inverse32(I)I
    .locals 2

    move v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public static blacklist invert([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverseVar([I[I[I)V

    return-void
.end method

.method public static blacklist modOddInverse([I[I[I)I
    .locals 20

    move-object/from16 v0, p0

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x4

    new-array v10, v4, [I

    new-array v11, v3, [I

    new-array v12, v3, [I

    new-array v13, v3, [I

    new-array v14, v3, [I

    new-array v15, v3, [I

    const/4 v9, 0x0

    const/4 v8, 0x1

    aput v8, v12, v9

    move-object/from16 v7, p1

    invoke-static {v2, v7, v9, v14, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    invoke-static {v2, v0, v9, v15, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    invoke-static {v15, v9, v13, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, -0x1

    aget v5, v15, v9

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v16

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget v8, v13, v9

    aget v0, v14, v9

    invoke-static {v4, v8, v0, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30(III[I)I

    move-result v0

    move v4, v3

    move/from16 v17, v5

    move-object v5, v11

    move/from16 v18, v6

    move-object v6, v12

    move-object v7, v10

    move/from16 v19, v0

    const/4 v0, 0x1

    move/from16 v8, v16

    move v0, v9

    move-object v9, v15

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    invoke-static {v3, v13, v14, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    add-int/lit8 v5, v17, 0x1e

    move-object/from16 v7, p1

    move v9, v0

    move/from16 v6, v18

    move/from16 v4, v19

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move/from16 v17, v5

    move/from16 v18, v6

    move v0, v9

    add-int/lit8 v5, v3, -0x1

    aget v5, v13, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v3, v5, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    invoke-static {v3, v5, v11, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnormalize30(II[I[I)V

    move-object/from16 v6, p2

    invoke-static {v2, v11, v0, v6, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    const/4 v0, 0x1

    invoke-static {v3, v13, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalTo(I[II)I

    move-result v0

    invoke-static {v3, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalToZero(I[I)I

    move-result v7

    and-int/2addr v0, v7

    return v0
.end method

.method public static blacklist modOddInverseVar([I[I[I)Z
    .locals 25

    move-object/from16 v0, p0

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x4

    new-array v4, v4, [I

    new-array v11, v3, [I

    new-array v12, v3, [I

    new-array v13, v3, [I

    new-array v14, v3, [I

    new-array v15, v3, [I

    const/4 v10, 0x0

    const/16 v16, 0x1

    aput v16, v12, v10

    move-object/from16 v9, p1

    invoke-static {v2, v9, v10, v14, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    invoke-static {v2, v0, v10, v15, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    invoke-static {v15, v10, v13, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v3, -0x1

    aget v5, v14, v5

    or-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v5

    mul-int/lit8 v6, v3, 0x1e

    add-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v2

    sub-int v17, v5, v6

    rsub-int/lit8 v5, v17, -0x1

    move v8, v3

    move v6, v3

    aget v7, v15, v10

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v18

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v7

    const/16 v19, 0x0

    move/from16 v10, v19

    :goto_0
    invoke-static {v6, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v20

    if-nez v20, :cond_2

    if-lt v10, v7, :cond_0

    const/16 v19, 0x0

    return v19

    :cond_0
    const/16 v19, 0x0

    add-int/lit8 v20, v10, 0x1e

    aget v10, v13, v19

    aget v0, v14, v19

    invoke-static {v5, v10, v0, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v0

    move v5, v8

    move v10, v6

    move-object v6, v11

    move/from16 v21, v7

    move-object v7, v12

    move/from16 v22, v0

    move v0, v8

    move-object v8, v4

    move/from16 v9, v18

    move/from16 v23, v1

    move v1, v10

    move/from16 v24, v19

    move/from16 v19, v3

    move/from16 v3, v24

    move-object v10, v15

    invoke-static/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    invoke-static {v1, v13, v14, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    add-int/lit8 v6, v1, -0x1

    aget v5, v13, v6

    add-int/lit8 v6, v1, -0x1

    aget v6, v14, v6

    add-int/lit8 v7, v1, -0x2

    shr-int/lit8 v7, v7, 0x1f

    shr-int/lit8 v8, v5, 0x1f

    xor-int/2addr v8, v5

    or-int/2addr v7, v8

    shr-int/lit8 v8, v6, 0x1f

    xor-int/2addr v8, v6

    or-int/2addr v7, v8

    if-nez v7, :cond_1

    add-int/lit8 v8, v1, -0x2

    aget v9, v13, v8

    shl-int/lit8 v10, v5, 0x1e

    or-int/2addr v9, v10

    aput v9, v13, v8

    add-int/lit8 v8, v1, -0x2

    aget v9, v14, v8

    shl-int/lit8 v10, v6, 0x1e

    or-int/2addr v9, v10

    aput v9, v14, v8

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    move-object/from16 v9, p1

    move v8, v0

    move/from16 v3, v19

    move/from16 v10, v20

    move/from16 v7, v21

    move/from16 v5, v22

    move/from16 v1, v23

    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    move/from16 v23, v1

    move/from16 v19, v3

    move v1, v6

    move/from16 v21, v7

    move v0, v8

    const/4 v3, 0x0

    add-int/lit8 v6, v1, -0x1

    aget v6, v13, v6

    shr-int/lit8 v6, v6, 0x1f

    add-int/lit8 v8, v0, -0x1

    aget v7, v11, v8

    shr-int/lit8 v7, v7, 0x1f

    if-gez v7, :cond_3

    invoke-static {v0, v11, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v7

    :cond_3
    if-gez v6, :cond_4

    invoke-static {v0, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v7

    invoke-static {v1, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v6

    :cond_4
    invoke-static {v1, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-nez v8, :cond_5

    return v3

    :cond_5
    if-gez v7, :cond_6

    invoke-static {v0, v11, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v7

    :cond_6
    move-object/from16 v8, p2

    invoke-static {v2, v11, v3, v8, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    return v16
.end method

.method private static blacklist negate30(I[I)I
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    sub-int/2addr v0, v3

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget v2, p1, v1

    sub-int/2addr v0, v2

    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public static blacklist random([I)[I
    .locals 6

    array-length v0, p0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    ushr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x8

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x10

    or-int/2addr v3, v4

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_1

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    invoke-static {v0, v2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v2
.end method

.method public static blacklist subtract([I[I[I[I)V
    .locals 2

    array-length v0, p0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    :cond_0
    return-void
.end method

.method private static blacklist updateDE30(I[I[I[II[I)V
    .locals 26

    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v3, p3, v3

    const/4 v4, 0x2

    aget v4, p3, v4

    const/4 v5, 0x3

    aget v5, p3, v5

    add-int/lit8 v6, v0, -0x1

    aget v6, p1, v6

    shr-int/lit8 v6, v6, 0x1f

    add-int/lit8 v7, v0, -0x1

    aget v7, p2, v7

    shr-int/lit8 v7, v7, 0x1f

    and-int v8, v2, v6

    and-int v9, v3, v7

    add-int/2addr v8, v9

    and-int v9, v4, v6

    and-int v10, v5, v7

    add-int/2addr v9, v10

    aget v10, p5, v1

    aget v11, p1, v1

    aget v1, p2, v1

    int-to-long v12, v2

    int-to-long v14, v11

    mul-long/2addr v12, v14

    int-to-long v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    int-to-long v6, v1

    mul-long/2addr v14, v6

    add-long/2addr v12, v14

    int-to-long v6, v4

    int-to-long v14, v11

    mul-long/2addr v6, v14

    int-to-long v14, v5

    move/from16 v18, v4

    move/from16 v19, v5

    int-to-long v4, v1

    mul-long/2addr v14, v4

    add-long/2addr v6, v14

    long-to-int v4, v12

    mul-int v4, v4, p4

    add-int/2addr v4, v8

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    sub-int/2addr v8, v4

    long-to-int v4, v6

    mul-int v4, v4, p4

    add-int/2addr v4, v9

    and-int/2addr v4, v5

    sub-int/2addr v9, v4

    int-to-long v14, v10

    move-wide/from16 v20, v6

    int-to-long v5, v8

    mul-long/2addr v14, v5

    add-long/2addr v12, v14

    int-to-long v5, v10

    int-to-long v14, v9

    mul-long/2addr v5, v14

    add-long v6, v20, v5

    const/16 v5, 0x1e

    shr-long/2addr v12, v5

    shr-long/2addr v6, v5

    const/4 v14, 0x1

    :goto_0
    if-ge v14, v0, :cond_0

    aget v10, p5, v14

    aget v11, p1, v14

    aget v1, p2, v14

    int-to-long v4, v2

    move/from16 v21, v14

    int-to-long v14, v11

    mul-long/2addr v4, v14

    int-to-long v14, v3

    move/from16 v22, v2

    move/from16 v23, v3

    int-to-long v2, v1

    mul-long/2addr v14, v2

    add-long/2addr v4, v14

    int-to-long v2, v10

    int-to-long v14, v8

    mul-long/2addr v2, v14

    add-long/2addr v4, v2

    add-long/2addr v12, v4

    move/from16 v2, v18

    int-to-long v3, v2

    int-to-long v14, v11

    mul-long/2addr v3, v14

    move/from16 v5, v19

    int-to-long v14, v5

    move/from16 v18, v11

    move-wide/from16 v24, v12

    int-to-long v11, v1

    mul-long/2addr v14, v11

    add-long/2addr v3, v14

    int-to-long v11, v10

    int-to-long v13, v9

    mul-long/2addr v11, v13

    add-long/2addr v3, v11

    add-long/2addr v6, v3

    add-int/lit8 v14, v21, -0x1

    move-wide/from16 v12, v24

    long-to-int v3, v12

    const v4, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v4

    aput v3, p1, v14

    const/16 v3, 0x1e

    shr-long/2addr v12, v3

    add-int/lit8 v14, v21, -0x1

    long-to-int v11, v6

    and-int/2addr v11, v4

    aput v11, p2, v14

    shr-long/2addr v6, v3

    add-int/lit8 v14, v21, 0x1

    move/from16 v11, v18

    move/from16 v18, v2

    move v5, v3

    move/from16 v2, v22

    move/from16 v3, v23

    goto :goto_0

    :cond_0
    move/from16 v23, v3

    add-int/lit8 v3, v0, -0x1

    long-to-int v4, v12

    aput v4, p1, v3

    add-int/lit8 v3, v0, -0x1

    long-to-int v4, v6

    aput v4, p2, v3

    return-void
.end method

.method private static blacklist updateFG30(I[I[I[I)V
    .locals 18

    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v3, p3, v3

    const/4 v4, 0x2

    aget v4, p3, v4

    const/4 v5, 0x3

    aget v5, p3, v5

    aget v6, p1, v1

    aget v1, p2, v1

    int-to-long v7, v2

    int-to-long v9, v6

    mul-long/2addr v7, v9

    int-to-long v9, v3

    int-to-long v11, v1

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    int-to-long v9, v4

    int-to-long v11, v6

    mul-long/2addr v9, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    const/16 v11, 0x1e

    shr-long/2addr v7, v11

    shr-long/2addr v9, v11

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v0, :cond_0

    aget v6, p1, v12

    aget v1, p2, v12

    int-to-long v13, v2

    move v15, v12

    int-to-long v11, v6

    mul-long/2addr v13, v11

    int-to-long v11, v3

    move/from16 v16, v2

    move/from16 v17, v3

    int-to-long v2, v1

    mul-long/2addr v11, v2

    add-long/2addr v13, v11

    add-long/2addr v7, v13

    int-to-long v2, v4

    int-to-long v11, v6

    mul-long/2addr v2, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v2, v11

    add-long/2addr v9, v2

    add-int/lit8 v12, v15, -0x1

    long-to-int v2, v7

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v3

    aput v2, p1, v12

    const/16 v2, 0x1e

    shr-long/2addr v7, v2

    add-int/lit8 v12, v15, -0x1

    long-to-int v11, v9

    and-int/2addr v3, v11

    aput v3, p2, v12

    shr-long/2addr v9, v2

    add-int/lit8 v12, v15, 0x1

    move v11, v2

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    :cond_0
    move/from16 v16, v2

    move/from16 v17, v3

    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v7

    aput v3, p1, v2

    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v9

    aput v3, p2, v2

    return-void
.end method
