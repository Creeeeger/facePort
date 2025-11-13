.class public Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "FixedPointCombMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-gt v2, v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v4

    add-int v5, v1, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    mul-int v7, v5, v4

    move-object/from16 v8, p2

    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_1

    const/4 v12, 0x0

    sub-int v13, v10, v11

    :goto_1
    if-ltz v13, :cond_0

    ushr-int/lit8 v14, v13, 0x5

    aget v14, v9, v14

    and-int/lit8 v15, v13, 0x1f

    ushr-int/2addr v14, v15

    ushr-int/lit8 v15, v14, 0x1

    xor-int/2addr v12, v15

    shl-int/lit8 v12, v12, 0x1

    xor-int/2addr v12, v14

    sub-int/2addr v13, v5

    goto :goto_1

    :cond_0
    invoke-interface {v3, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;->lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    return-object v11

    :cond_2
    move-object/from16 v8, p2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
