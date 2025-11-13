.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P11:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt23:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .locals 4

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .locals 4

    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x17

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .locals 4

    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3

    const/16 v0, 0x180

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    const/16 v1, 0xb

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v2, 0xc

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_0
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    :goto_0
    return-void
.end method

.method public static blacklist inv([I[I)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

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

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist negate([I[I)V
    .locals 3

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    :goto_0
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .locals 3

    const/16 v0, 0x30

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1

    nop

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .locals 44

    move-object/from16 v0, p1

    const/16 v1, 0x10

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x11

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x12

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x13

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0x14

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0x15

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0x16

    aget v15, p0, v15

    move-wide/from16 v16, v9

    int-to-long v9, v15

    and-long/2addr v9, v3

    const/16 v15, 0x17

    aget v15, p0, v15

    move-wide/from16 v18, v7

    int-to-long v7, v15

    and-long/2addr v7, v3

    const-wide/16 v20, 0x1

    const/16 v15, 0xc

    aget v15, p0, v15

    move-wide/from16 v22, v1

    int-to-long v1, v15

    and-long/2addr v1, v3

    add-long/2addr v1, v11

    const-wide/16 v24, 0x1

    sub-long v1, v1, v24

    const/16 v15, 0xd

    aget v15, p0, v15

    move-wide/from16 v26, v11

    int-to-long v11, v15

    and-long/2addr v11, v3

    add-long/2addr v11, v9

    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v28, v11

    int-to-long v11, v15

    and-long/2addr v11, v3

    add-long/2addr v11, v9

    add-long/2addr v11, v7

    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v30, v11

    int-to-long v11, v15

    and-long/2addr v11, v3

    add-long/2addr v11, v7

    add-long v32, v5, v13

    sub-long v34, v13, v7

    sub-long v36, v9, v7

    add-long v38, v1, v34

    const-wide/16 v40, 0x0

    const/4 v15, 0x0

    move-wide/from16 v42, v9

    aget v9, p0, v15

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long v9, v9, v38

    add-long v9, v40, v9

    long-to-int v3, v9

    aput v3, v0, v15

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v4, 0x1

    aget v15, p0, v4

    int-to-long v3, v15

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long/2addr v3, v7

    sub-long/2addr v3, v1

    add-long v3, v3, v28

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x1

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    sub-long/2addr v3, v13

    sub-long v3, v3, v28

    add-long v3, v3, v30

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x2

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    sub-long v3, v3, v30

    add-long/2addr v3, v11

    add-long v3, v3, v38

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x3

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v22

    add-long/2addr v3, v13

    add-long v3, v3, v28

    sub-long/2addr v3, v11

    add-long v3, v3, v38

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x4

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    sub-long v3, v3, v22

    add-long v3, v3, v28

    add-long v3, v3, v30

    add-long v3, v3, v32

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x5

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v18

    sub-long/2addr v3, v5

    add-long v3, v3, v30

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x6

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v22

    add-long v3, v3, v16

    sub-long v3, v3, v18

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/4 v4, 0x7

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/16 v3, 0x8

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v22

    add-long/2addr v3, v5

    add-long v3, v3, v26

    sub-long v3, v3, v16

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/16 v3, 0x9

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v18

    sub-long v3, v3, v26

    add-long v3, v3, v32

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/16 v4, 0x9

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/16 v3, 0xa

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v18

    add-long v3, v3, v16

    sub-long v3, v3, v34

    add-long v3, v3, v36

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/16 v4, 0xa

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v9, v3

    const/16 v3, 0xb

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v16

    add-long v3, v3, v26

    sub-long v3, v3, v36

    add-long/2addr v9, v3

    long-to-int v3, v9

    const/16 v4, 0xb

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long v3, v9, v3

    add-long v3, v3, v24

    long-to-int v9, v3

    invoke-static {v9, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .locals 12

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    long-to-int v9, v0

    aput v9, p1, v8

    const/16 v8, 0x20

    shr-long/2addr v0, v8

    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    sub-long/2addr v10, v4

    add-long/2addr v0, v10

    long-to-int v10, v0

    aput v10, p1, v9

    shr-long/2addr v0, v8

    cmp-long v9, v0, v2

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    long-to-int v10, v0

    aput v10, p1, v9

    shr-long/2addr v0, v8

    :cond_0
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v10, v4

    add-long/2addr v0, v10

    long-to-int v10, v0

    aput v10, p1, v9

    shr-long/2addr v0, v8

    const/4 v9, 0x4

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    long-to-int v6, v0

    aput v6, p1, v9

    shr-long/2addr v0, v8

    :cond_1
    cmp-long v2, v0, v2

    const/16 v3, 0xc

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    invoke-static {v3, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_4
    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 1

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I)V
    .locals 1

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_1
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .locals 4

    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_0
    return-void
.end method

.method public static blacklist twice([I[I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
