.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP224K1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v10

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v11

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isOne()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v15, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v8, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    goto :goto_0

    :cond_3
    move-object v8, v12

    iget-object v15, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v15, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    move-object v15, v11

    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v17, v1

    iget-object v1, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v18, v6

    move-object/from16 v30, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v30

    goto :goto_1

    :cond_4
    move-object v1, v13

    move-object/from16 v17, v5

    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    move-object v5, v10

    move-object/from16 v18, v6

    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object/from16 v30, v5

    move-object v5, v1

    move-object/from16 v1, v30

    :goto_1
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    invoke-static {v1, v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    move-object/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    invoke-static {v5, v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    :cond_6
    move-object/from16 v19, v12

    move-object/from16 v21, v4

    move-object/from16 v4, v19

    invoke-static {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    move-object/from16 v19, v8

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    invoke-static {v4, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object/from16 v22, v12

    move-object/from16 v23, v11

    move-object/from16 v11, v22

    invoke-static {v4, v1, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {v8, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    invoke-static {v5, v8, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    move-object/from16 v22, v1

    invoke-static {v11, v11, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v1

    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    move/from16 v24, v1

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    move-object/from16 v25, v4

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v26, v5

    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v4, v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v27, v8

    iget-object v8, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v11, v5, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v3, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiplyAddToExt([I[I[I)V

    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v28, v3

    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v29, v6

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    goto :goto_2

    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v29, v6

    :goto_2
    if-nez v0, :cond_8

    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v3, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    invoke-direct {v6, v2, v1, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    :cond_1
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    iget-object v7, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    iget-object v9, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {v8, v8, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v9

    invoke-static {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    move-object v10, v6

    iget-object v11, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v6, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/4 v11, 0x2

    const/4 v12, 0x7

    invoke-static {v12, v10, v11, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v9

    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v11

    const/4 v13, 0x3

    invoke-static {v12, v7, v13, v5, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v9

    invoke-static {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    new-instance v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    iget-object v13, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    iget-object v13, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v14, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    iget-object v13, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v14, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    new-instance v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v13, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    iget-object v14, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v10, v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v14, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v14, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    iget-object v15, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v15, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->twice([I[I)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v0, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v15, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v15, 0x0

    aput-object v14, v5, v15

    invoke-direct {v0, v1, v12, v13, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
