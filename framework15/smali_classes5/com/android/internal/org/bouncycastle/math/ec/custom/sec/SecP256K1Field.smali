.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;
.super Ljava/lang/Object;
.source "SecP256K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt15:I = -0x1

.field private static final blacklist PExtInv:[I

.field private static final blacklist PInv33:I = 0x3d1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        -0x3d1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0xe90a1
        0x7a2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7a2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0xe90a1
        -0x7a3
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7a1
        0x2
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .locals 4

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .locals 4

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x3d1

    invoke-static {v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    :cond_0
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    :goto_0
    return-void
.end method

.method public static blacklist inv([I[I)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static blacklist negate([I[I)V
    .locals 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :goto_0
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1

    nop

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->random(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x3d1

    const/16 v2, 0x8

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul33Add(I[II[II[II)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x3d1

    invoke-static {v3, v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul33DWordAdd(IJ[II)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x7

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/16 v4, 0x8

    invoke-static {v4, v3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .locals 3

    const/16 v0, 0x3d1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x8

    invoke-static {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_2
    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    :cond_0
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .locals 4

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_0
    return-void
.end method

.method public static blacklist twice([I[I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x3d1

    invoke-static {v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1
    return-void
.end method
