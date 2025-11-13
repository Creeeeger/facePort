.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final blacklist PRECOMP_POW2:[I

.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP224K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {v2, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v3, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {v3, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {v4, v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v5, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v5, v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v7, v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v9, v7

    const/16 v10, 0x8

    invoke-static {v7, v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v9, v5, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v10, v5

    invoke-static {v9, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v10, v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v11, v4

    const/16 v12, 0x13

    invoke-static {v10, v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v11, v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    const/16 v13, 0x2a

    invoke-static {v11, v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v12, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v13, v11

    const/16 v14, 0x17

    invoke-static {v12, v14, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v13, v10, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v14, v10

    const/16 v15, 0x54

    invoke-static {v13, v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v14, v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object v15, v14

    const/16 v6, 0x14

    invoke-static {v15, v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v15, v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {v15, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v15, v1, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/4 v6, 0x2

    invoke-static {v15, v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v15, v1, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/4 v6, 0x4

    invoke-static {v15, v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    invoke-static {v15, v3, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {v15, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    move-object v6, v12

    invoke-static {v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    :cond_1
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    invoke-static {v15, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    invoke-static {v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    :cond_2
    const/4 v8, 0x0

    return-object v8

    :cond_3
    :goto_0
    return-object v0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
