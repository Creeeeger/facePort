.class public Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.source "MD4Digest.java"


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x10

.field private static final blacklist S11:I = 0x3

.field private static final blacklist S12:I = 0x7

.field private static final blacklist S13:I = 0xb

.field private static final blacklist S14:I = 0x13

.field private static final blacklist S21:I = 0x3

.field private static final blacklist S22:I = 0x5

.field private static final blacklist S23:I = 0x9

.field private static final blacklist S24:I = 0xd

.field private static final blacklist S31:I = 0x3

.field private static final blacklist S32:I = 0x9

.field private static final blacklist S33:I = 0xb

.field private static final blacklist S34:I = 0xf


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method

.method private blacklist F(III)I
    .locals 2

    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist G(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist H(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    return-void
.end method

.method private blacklist rotateLeft(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist unpackWord(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->finish()V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "MD4"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected blacklist processBlock()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v4, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x7

    invoke-direct {v0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0xb

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v6

    add-int/2addr v5, v12

    const/16 v12, 0x13

    invoke-direct {v0, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v15, 0x5

    aget v13, v13, v15

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v16, 0x6

    aget v13, v13, v16

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v8

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v17, 0x8

    aget v13, v13, v17

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v11, 0x9

    aget v13, v13, v11

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v19, 0xa

    aget v13, v13, v19

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v10

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v20, 0xc

    aget v13, v13, v20

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v9, 0xd

    aget v13, v13, v9

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v22, 0xe

    aget v13, v13, v22

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v10, 0xf

    aget v13, v13, v10

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v5, v12

    const v12, 0x5a827999

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v14

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v17

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v20

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v21, 0x1

    aget v13, v13, v21

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v15

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v11

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v9

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v18, 0x2

    aget v13, v13, v18

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v16

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v19

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v22

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v6

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v8

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v23, 0xb

    aget v13, v13, v23

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v10

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v5, v12

    const v12, 0x6ed9eba1

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v17

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v14

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    const/16 v13, 0xb

    invoke-direct {v0, v5, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v20

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v19

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v16

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    const/16 v13, 0xb

    invoke-direct {v0, v5, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v22

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v11

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v15

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    const/16 v13, 0xb

    invoke-direct {v0, v5, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v9, v13, v9

    add-int/2addr v5, v9

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v9, v9, v6

    add-int/2addr v5, v9

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v9, 0xb

    aget v6, v6, v9

    add-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v7, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v6, v6

    if-eq v5, v6, :cond_0

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected blacklist processLength(J)V
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    return-void
.end method

.method protected blacklist processWord([BI)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public blacklist reset()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method
