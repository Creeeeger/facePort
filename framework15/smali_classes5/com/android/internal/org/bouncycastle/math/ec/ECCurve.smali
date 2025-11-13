.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
    }
.end annotation


# static fields
.field public static final blacklist COORD_AFFINE:I = 0x0

.field public static final blacklist COORD_HOMOGENEOUS:I = 0x1

.field public static final blacklist COORD_JACOBIAN:I = 0x2

.field public static final blacklist COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final blacklist COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final blacklist COORD_LAMBDA_AFFINE:I = 0x5

.field public static final blacklist COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final blacklist COORD_SKEWED:I = 0x7


# instance fields
.field protected blacklist a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist cofactor:Ljava/math/BigInteger;

.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist field:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

.field protected blacklist multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

.field protected blacklist order:Ljava/math/BigInteger;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-void
.end method

.method public static blacklist getAllCoordinateSystems()[I
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method protected blacklist checkPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)V

    return-void
.end method

.method protected blacklist checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)V
    .locals 4

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    if-ne p0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' entries must be null or on this curve"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid range specified for \'points\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'points\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized blacklist configure()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;ILcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    add-int v4, p2, v3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-le v7, v0, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    array-length v10, v5

    sub-int/2addr v10, v7

    array-length v11, v6

    if-le v11, v0, :cond_1

    move v8, v9

    :cond_1
    array-length v9, v6

    sub-int/2addr v9, v8

    add-int v11, v2, v0

    sub-int/2addr v11, v10

    invoke-static {v5, v7, v1, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    add-int v11, v2, v0

    sub-int/2addr v11, v9

    invoke-static {v6, v8, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;

    invoke-direct {v2, p0, p3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;II[B)V

    return-object v2
.end method

.method protected blacklist createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist decodePoint([B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    const/4 v2, 0x7

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid point encoding 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    array-length v6, p1

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v5

    if-ne v6, v7, :cond_2

    invoke-static {p1, v5, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-static {p1, v7, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v4, v2, :cond_0

    move v3, v5

    :cond_0
    if-ne v8, v3, :cond_1

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for hybrid encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    array-length v2, p1

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v5

    if-ne v2, v3, :cond_3

    invoke-static {p1, v5, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for uncompressed encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    array-length v2, p1

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_5

    and-int/lit8 v2, v4, 0x1

    invoke-static {p1, v5, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid point"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for compressed encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    array-length v2, p1

    if-ne v2, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    nop

    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid infinity encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for infinity encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getCofactor()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getCoordinateSystem()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public blacklist getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public blacklist getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract blacklist getFieldSize()I
.end method

.method public abstract blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist getMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    return-object v0
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public blacklist normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public blacklist normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-array v0, p3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    new-array v1, p3, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_0
    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iso\' not valid for affine coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, p3, :cond_3

    add-int v5, p2, v3

    aget-object v5, p1, v5

    if-eqz v5, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v4, v2, 0x1

    add-int v6, p2, v3

    aput v6, v1, v2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-static {v0, v4, v2, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget v4, v1, v3

    aget-object v5, p1, v4

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    move-object v0, v1

    iput-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    invoke-interface {p3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public abstract blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
