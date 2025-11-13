.class public Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 23

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v6

    move-object/from16 v7, p2

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    array-length v10, v8

    const v11, 0xffff

    if-le v10, v1, :cond_2

    add-int/lit8 v10, v10, -0x1

    aget v12, v8, v10

    shr-int/lit8 v13, v12, 0x10

    and-int v14, v12, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-gez v13, :cond_0

    move-object/from16 v16, v5

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    :goto_0
    shl-int/lit8 v11, v15, 0x2

    move/from16 v17, v0

    shl-int v0, v1, v6

    if-ge v11, v0, :cond_1

    invoke-static {v15}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    sub-int v11, v6, v0

    add-int/lit8 v18, v0, -0x1

    shl-int v18, v1, v18

    xor-int v18, v15, v18

    add-int/lit8 v19, v6, -0x1

    shl-int v19, v1, v19

    add-int/lit8 v19, v19, -0x1

    shl-int v20, v18, v11

    add-int/lit8 v20, v20, 0x1

    ushr-int/lit8 v1, v19, 0x1

    aget-object v1, v16, v1

    ushr-int/lit8 v21, v20, 0x1

    move/from16 v22, v0

    aget-object v0, v16, v21

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    sub-int/2addr v14, v11

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v15, 0x1

    aget-object v0, v16, v0

    :goto_1
    invoke-virtual {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_2

    :cond_2
    move/from16 v17, v0

    :goto_2
    if-lez v10, :cond_4

    add-int/lit8 v10, v10, -0x1

    aget v0, v8, v10

    shr-int/lit8 v1, v0, 0x10

    const v11, 0xffff

    and-int v12, v0, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gez v1, :cond_3

    move-object v14, v5

    goto :goto_3

    :cond_3
    move-object v14, v4

    :goto_3
    ushr-int/lit8 v15, v13, 0x1

    aget-object v15, v14, v15

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_2

    :cond_4
    return-object v9
.end method
