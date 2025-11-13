.class public Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cleanPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isValidPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist implShamirsTrickFixedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v9

    if-eq v8, v9, :cond_0

    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v10}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    move-object/from16 v11, p0

    invoke-virtual {v10, v11, v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    move-object/from16 v13, p2

    invoke-virtual {v10, v13, v1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    return-object v15

    :cond_0
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move v10, v8

    add-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    div-int/2addr v12, v10

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    mul-int v15, v12, v10

    invoke-static {v15, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v16

    invoke-static {v15, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v17

    add-int/lit8 v18, v15, -0x1

    const/16 v19, 0x0

    move/from16 v0, v19

    :goto_0
    if-ge v0, v12, :cond_2

    const/16 v19, 0x0

    const/16 v20, 0x0

    sub-int v21, v18, v0

    move/from16 v1, v19

    move-object/from16 v19, v2

    move/from16 v2, v20

    :goto_1
    if-ltz v21, :cond_1

    ushr-int/lit8 v20, v21, 0x5

    aget v20, v16, v20

    and-int/lit8 v22, v21, 0x1f

    ushr-int v20, v20, v22

    ushr-int/lit8 v22, v20, 0x1

    xor-int v1, v1, v22

    shl-int/lit8 v1, v1, 0x1

    xor-int v1, v1, v20

    ushr-int/lit8 v22, v21, 0x5

    aget v22, v17, v22

    and-int/lit8 v23, v21, 0x1f

    ushr-int v22, v22, v23

    ushr-int/lit8 v23, v22, 0x1

    xor-int v2, v2, v23

    shl-int/lit8 v2, v2, 0x1

    xor-int v2, v2, v22

    sub-int v21, v21, v12

    goto :goto_1

    :cond_1
    move/from16 v20, v3

    invoke-interface {v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move/from16 v21, v1

    invoke-interface {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move/from16 v22, v2

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move/from16 v3, v20

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move-object/from16 v19, v2

    move/from16 v20, v3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist implShamirsTrickJsf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    const/4 v6, 0x4

    new-array v7, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const/4 v10, 0x2

    aput-object v0, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    invoke-virtual {v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    aget-object v13, v7, v11

    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v8

    aget-object v13, v7, v10

    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v9

    aget-object v13, v7, v9

    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v10

    aget-object v13, v7, v8

    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v11

    aput-object v3, v12, v6

    const/4 v13, 0x5

    aget-object v8, v7, v8

    aput-object v8, v12, v13

    const/4 v8, 0x6

    aget-object v9, v7, v9

    aput-object v9, v12, v8

    const/4 v8, 0x7

    aget-object v9, v7, v10

    aput-object v9, v12, v8

    const/16 v8, 0x8

    aget-object v9, v7, v11

    aput-object v9, v12, v8

    move-object v8, v12

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v11

    move-object v12, v3

    array-length v13, v11

    :goto_0
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_0

    aget-byte v14, v11, v13

    shl-int/lit8 v15, v14, 0x18

    shr-int/lit8 v15, v15, 0x1c

    shl-int/lit8 v16, v14, 0x1c

    shr-int/lit8 v16, v16, 0x1c

    mul-int/lit8 v17, v15, 0x3

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v16

    aget-object v6, v8, v17

    invoke-virtual {v12, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    return-object v12
.end method

.method static blacklist implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-static {v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v7

    move-object/from16 v8, p0

    invoke-static {v8, v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-static {v10, v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v12

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-gt v13, v12, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-gt v13, v12, :cond_2

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static/range {p0 .. p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickFixedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_1
    move-object v13, v12

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_2
    move-object/from16 v16, v12

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_3
    move-object v14, v12

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_4
    move-object/from16 v17, v12

    invoke-static {v11, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v12

    invoke-static {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v19

    move-object v15, v12

    move-object/from16 v18, v19

    invoke-static/range {v13 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    return-object v15
.end method

.method static blacklist implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 19

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v5

    move-object/from16 v7, p1

    invoke-static {v7, v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    invoke-static/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v10

    invoke-static {v9, v10, v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_1
    move-object v12, v11

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_2
    move-object v15, v11

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_3
    move-object v13, v11

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_4
    move-object/from16 v16, v11

    invoke-static {v10, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v11

    invoke-static {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v18

    move-object v14, v11

    move-object/from16 v17, v18

    invoke-static/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    return-object v14
.end method

.method private static blacklist implShamirsTrickWNaf([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    move-object v6, v5

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    :goto_0
    if-ltz v8, :cond_8

    array-length v9, v0

    if-ge v8, v9, :cond_0

    aget-byte v9, v0, v8

    goto :goto_1

    :cond_0
    move v9, v3

    :goto_1
    array-length v10, v1

    if-ge v8, v10, :cond_1

    aget-byte v10, v1, v8

    goto :goto_2

    :cond_1
    move v10, v3

    :goto_2
    or-int v11, v9, v10

    if-nez v11, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_2
    move-object v11, v5

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gez v9, :cond_3

    move-object/from16 v13, p1

    goto :goto_3

    :cond_3
    move-object v13, p0

    :goto_3
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gez v10, :cond_5

    move-object/from16 v13, p4

    goto :goto_4

    :cond_5
    move-object/from16 v13, p3

    :goto_4
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :cond_6
    if-lez v7, :cond_7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    const/4 v7, 0x0

    :cond_7
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_8
    if-lez v7, :cond_9

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    :cond_9
    return-object v6
.end method

.method static blacklist implSumOfMultiplies(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 20

    move-object/from16 v0, p1

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    new-array v3, v2, [Z

    new-array v4, v2, [Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    new-array v5, v2, [[B

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v8, 0x1

    aget-object v10, p2, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-gez v11, :cond_0

    move v11, v13

    goto :goto_1

    :cond_0
    move v11, v12

    :goto_1
    aput-boolean v11, v3, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    aget-object v11, p2, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_1

    move v12, v13

    :cond_1
    aput-boolean v12, v3, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v14, 0x8

    invoke-static {v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v12

    aget-object v15, v0, v7

    invoke-static {v15, v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    move-object/from16 v13, p0

    invoke-static {v13, v15}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    move/from16 v18, v1

    const/4 v1, 0x1

    invoke-static {v0, v6, v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v1

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    move/from16 v19, v2

    const/16 v2, 0x8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move-object/from16 v16, v6

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput-object v14, v4, v8

    aput-object v1, v4, v9

    invoke-static {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v11}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    aput-object v6, v5, v9

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v16

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_0

    :cond_2
    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static blacklist implSumOfMultiplies([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 10

    array-length v0, p0

    new-array v1, v0, [Z

    new-array v2, v0, [Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    new-array v3, v0, [[B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    const/16 v8, 0x8

    invoke-static {v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v6

    aget-object v9, p0, v4

    invoke-static {v9, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput-object v7, v2, v4

    invoke-static {v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v9

    aput-object v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist implSumOfMultiplies([Z[Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    move-object v6, v5

    const/4 v7, 0x0

    add-int/lit8 v8, v1, -0x1

    :goto_1
    if-ltz v8, :cond_8

    move-object v9, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_5

    aget-object v11, v0, v10

    array-length v12, v11

    if-ge v8, v12, :cond_1

    aget-byte v12, v11, v8

    goto :goto_3

    :cond_1
    move v12, v3

    :goto_3
    if-eqz v12, :cond_4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    aget-object v14, p1, v10

    if-gez v12, :cond_2

    const/4 v15, 0x1

    goto :goto_4

    :cond_2
    move v15, v3

    :goto_4
    aget-boolean v3, p0, v10

    if-ne v15, v3, :cond_3

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_5

    :cond_3
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    :goto_5
    ushr-int/lit8 v15, v13, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    if-ne v9, v5, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    if-lez v7, :cond_7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    const/4 v7, 0x0

    :cond_7
    invoke-virtual {v6, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v6, v3

    :goto_6
    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    if-lez v7, :cond_9

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    :cond_9
    return-object v6
.end method

.method static blacklist implSumOfMultipliesGLV([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    array-length v2, p0

    shl-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    aget-object v8, v6, v0

    aput-object v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v6, v8

    aput-object v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v6, p0, v4

    invoke-static {p2, v6}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v0, v5

    add-int/lit8 v5, v8, 0x1

    aput-object v7, v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist isF2mCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isF2mField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z
    .locals 3

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isFpCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFpField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist montgomeryTrick([Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public static blacklist montgomeryTrick([Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 6

    new-array v0, p2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v2, p0, p1

    aput-object v2, v0, v1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-eqz p3, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    add-int/2addr v1, p1

    aget-object v4, p0, v1

    aget-object v5, v0, v3

    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, p0, v1

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move v1, v3

    goto :goto_1

    :cond_2
    aput-object v2, p0, p1

    return-void
.end method

.method public static blacklist referenceMultiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method public static blacklist shamirsTrick(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sumOfMultiplies([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    array-length v0, p0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    aget-object v1, p0, v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    new-array v4, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    aput-object v1, v4, v2

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    aget-object v3, p0, v2

    aget-object v2, p1, v2

    aget-object v4, p0, v1

    aget-object v1, p1, v1

    invoke-static {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    :pswitch_1
    aget-object v1, p0, v2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v5, p0, v2

    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v2

    instance-of v5, v2, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-static {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist sumOfTwoMultiplies(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object p1, v2, v4

    aput-object p3, v2, v5

    move-object v4, v1

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v3, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist validatePoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
