.class Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final blacklist MINUS_ONE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_THREE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_TWO:Ljava/math/BigInteger;

.field public static final blacklist POW_2_WIDTH:B = 0x10t

.field public static final blacklist WIDTH:B = 0x4t

.field public static final blacklist alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha0Tnaf:[[B

.field public static final blacklist alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha1Tnaf:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 20

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    const/16 v0, 0x9

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v5, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v10, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    new-array v13, v5, [B

    aput-byte v5, v13, v2

    new-array v15, v7, [B

    fill-array-data v15, :array_0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    new-array v14, v6, [B

    fill-array-data v14, :array_2

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    filled-new-array/range {v12 .. v19}, [[B

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    aput-object v3, v0, v2

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v13, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v4, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v4, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v3, v0, v10

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    new-array v13, v5, [B

    aput-byte v5, v13, v2

    new-array v15, v7, [B

    fill-array-data v15, :array_3

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    new-array v1, v6, [B

    fill-array-data v1, :array_5

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    filled-new-array/range {v12 .. v19}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8

    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sub-int v6, v0, p5

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_0
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v6, p5}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static blacklist getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-ge v3, p1, :cond_4

    const/4 v4, 0x0

    if-ne p0, v0, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    :goto_3
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v2

    move-object v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public static blacklist getMu(I)B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getPreComp(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    array-length v2, v0

    const/4 v3, 0x3

    :goto_1
    if-ge v3, v2, :cond_1

    ushr-int/lit8 v4, v3, 0x1

    aget-object v5, v0, v3

    invoke-static {p0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    return-object v1
.end method

.method protected static blacklist getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 9

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v1

    add-int/lit8 v2, p0, 0x3

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v3

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_0
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    return-object v8
.end method

.method public static blacklist getSi(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v3

    add-int/lit8 v4, v0, 0x3

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    aget-object v8, v6, v5

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v6, v5

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v6, v7

    :cond_0
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v6, v5

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/math/BigInteger;

    aput-object v8, v10, v5

    aput-object v9, v10, v7

    return-object v10

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "si is defined for Koblitz curves only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getTw(BI)Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-ne p0, v1, :cond_0

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v0, v2, v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, p1, v4

    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    const/4 v3, 0x0

    if-lez v5, :cond_0

    move-object v6, p0

    goto :goto_1

    :cond_0
    move-object v6, v2

    :goto_1
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static blacklist multiplyRTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v9

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v10

    int-to-byte v3, v8

    const/16 v6, 0xa

    move-object v1, p1

    move v2, v7

    move-object v4, v10

    move v5, v9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B

    move-result v1

    invoke-static {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 5

    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    if-ne p0, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    if-ne p0, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .locals 14

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    move v10, p1

    invoke-static {v0, p1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v11

    aget-object v12, v11, v2

    aget-object v5, p3, v1

    move-object v4, p0

    move-object v6, v12

    move/from16 v7, p2

    move v8, p1

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v13

    aget-object v5, p3, v2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-static {v13, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v5

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, p0

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aget-object v9, p3, v2

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v2, p3, v2

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v1, p3, v1

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public static blacklist round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .locals 17

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v2

    if-ne v2, v1, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mu must be 1 or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    invoke-virtual {v6, v6}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    if-ne v0, v2, :cond_2

    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    :goto_1
    invoke-virtual {v8, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    if-ne v0, v2, :cond_3

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_5

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_4

    move/from16 v14, p2

    goto :goto_3

    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_6

    move/from16 v14, p2

    :cond_6
    :goto_3
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_8

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_7

    neg-int v15, v0

    int-to-byte v14, v15

    goto :goto_4

    :cond_7
    const/4 v13, -0x1

    goto :goto_4

    :cond_8
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_9

    neg-int v15, v0

    int-to-byte v14, v15

    :cond_9
    :goto_4
    move v15, v1

    int-to-long v0, v13

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v16, v2

    int-to-long v1, v14

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    :cond_a
    move v15, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist tau(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x4

    goto :goto_1

    :cond_2
    const/16 v3, 0x22

    :goto_1
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v8, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    :goto_2
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v6, v0

    new-array v0, v6, [B

    invoke-static {v4, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_4
    :goto_3
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    aget-byte v9, v4, v5

    if-ne v9, v0, :cond_5

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_4

    :cond_5
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_6
    aput-byte v10, v4, v5

    :goto_5
    move-object v9, v7

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    if-ne p0, v0, :cond_7

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_6

    :cond_7
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :goto_6
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static blacklist tauAdicWNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_2

    add-int/lit8 v6, v5, 0x4

    add-int v6, v6, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, p2, 0x22

    :goto_1
    new-array v7, v6, [B

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    const/4 v11, 0x0

    :goto_2
    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    return-object v7

    :cond_4
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_8

    nop

    move-object/from16 v13, p4

    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-ltz v14, :cond_5

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    int-to-byte v14, v14

    goto :goto_4

    :cond_5
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    int-to-byte v14, v14

    :goto_4
    aput-byte v14, v7, v11

    const/4 v15, 0x1

    if-gez v14, :cond_6

    const/4 v15, 0x0

    neg-int v3, v14

    int-to-byte v14, v3

    :cond_6
    if-eqz v15, :cond_7

    aget-object v3, p5, v14

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v9, p5, v14

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    move-object v10, v9

    move-object v9, v3

    goto :goto_5

    :cond_7
    aget-object v3, p5, v14

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v9, p5, v14

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    move-object v10, v9

    move-object v9, v3

    :goto_5
    goto :goto_6

    :cond_8
    move-object/from16 v13, p4

    aput-byte v12, v7, v11

    :goto_6
    move-object v3, v9

    const/4 v12, 0x1

    if-ne v0, v12, :cond_9

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_7

    :cond_9
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    :goto_7
    invoke-virtual {v3, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v10

    nop

    add-int/lit8 v11, v11, 0x1

    move v3, v12

    goto/16 :goto_2
.end method
