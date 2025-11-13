.class public Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# static fields
.field private static final blacklist C_CR1:B = 0x1t

.field private static final blacklist C_CR2:B = 0x2t

.field private static final blacklist C_CR3:B = 0x3t

.field private static final blacklist C_ILL:B = 0x0t

.field private static final blacklist C_L2A:B = 0x4t

.field private static final blacklist C_L3A:B = 0x5t

.field private static final blacklist C_L3B:B = 0x6t

.field private static final blacklist C_L3C:B = 0x7t

.field private static final blacklist C_L4A:B = 0x8t

.field private static final blacklist C_L4B:B = 0x9t

.field private static final blacklist C_L4C:B = 0xat

.field private static final blacklist S_CS1:B = 0x0t

.field private static final blacklist S_CS2:B = 0x10t

.field private static final blacklist S_CS3:B = 0x20t

.field private static final blacklist S_END:B = -0x1t

.field private static final blacklist S_ERR:B = -0x2t

.field private static final blacklist S_P3A:B = 0x30t

.field private static final blacklist S_P3B:B = 0x40t

.field private static final blacklist S_P4A:B = 0x50t

.field private static final blacklist S_P4B:B = 0x60t

.field private static final blacklist firstUnitTable:[S

.field private static final blacklist transitionTable:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    const/16 v0, 0x80

    new-array v1, v0, [S

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    const/16 v1, 0x70

    new-array v2, v1, [B

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x1f

    const/4 v6, 0x2

    const/16 v7, 0x10

    invoke-static {v2, v7, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x3f

    const/4 v6, 0x3

    const/16 v8, 0x20

    invoke-static {v2, v8, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x40

    const/16 v6, 0x41

    invoke-static {v2, v4, v6, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x5f

    const/4 v6, 0x4

    const/16 v8, 0x42

    invoke-static {v2, v8, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x60

    const/4 v6, 0x5

    invoke-static {v2, v4, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x61

    const/16 v6, 0x6c

    const/4 v8, 0x6

    invoke-static {v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x6d

    const/4 v6, 0x7

    invoke-static {v2, v4, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x6e

    const/16 v6, 0x6f

    invoke-static {v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x8

    invoke-static {v2, v1, v1, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x73

    const/16 v6, 0x9

    const/16 v8, 0x71

    invoke-static {v2, v8, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x74

    const/16 v6, 0xa

    invoke-static {v2, v1, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x75

    const/16 v6, 0x7f

    invoke-static {v2, v1, v6, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    sget-object v6, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    array-length v6, v6

    sub-int/2addr v6, v5

    const/4 v5, -0x2

    invoke-static {v1, v3, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/4 v5, -0x1

    const/16 v6, 0xb

    invoke-static {v1, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x18

    const/16 v5, 0x1b

    invoke-static {v1, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x28

    const/16 v5, 0x2b

    invoke-static {v1, v4, v5, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x3a

    const/16 v5, 0x3b

    invoke-static {v1, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x48

    const/16 v5, 0x49

    invoke-static {v1, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x59

    const/16 v4, 0x5b

    invoke-static {v1, v3, v4, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x68

    invoke-static {v1, v3, v3, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    aget-byte v5, v2, v4

    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    aget-byte v7, v3, v5

    sget-object v8, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/lit8 v9, v6, 0x8

    or-int/2addr v9, v7

    int-to-short v9, v9

    aput-short v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fill([BIIB)V
    .locals 1

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_0

    aput-byte p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist transcodeToUTF16([B[C)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_8

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    const/4 v3, -0x1

    if-ltz v0, :cond_1

    array-length v4, p1

    if-lt v1, v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-char v4, v0

    aput-char v4, p1, v1

    move v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 v5, v0, 0x7f

    aget-short v4, v4, v5

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v6, v4

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_1
    if-ltz v6, :cond_3

    array-length v7, p0

    if-lt v0, v7, :cond_2

    return v3

    :cond_2
    add-int/lit8 v7, v0, 0x1

    aget-byte v2, p0, v0

    shl-int/lit8 v0, v5, 0x6

    and-int/lit8 v8, v2, 0x3f

    or-int v5, v0, v8

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v8, v2, 0xff

    ushr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v6

    aget-byte v6, v0, v8

    move v0, v7

    goto :goto_1

    :cond_3
    const/4 v7, -0x2

    if-ne v6, v7, :cond_4

    return v3

    :cond_4
    const v7, 0xffff

    if-gt v5, v7, :cond_6

    array-length v7, p1

    if-lt v1, v7, :cond_5

    return v3

    :cond_5
    add-int/lit8 v3, v1, 0x1

    int-to-char v7, v5

    aput-char v7, p1, v1

    move v1, v3

    goto :goto_2

    :cond_6
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_7

    return v3

    :cond_7
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v7, v5, 0xa

    const v8, 0xd7c0

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit16 v7, v5, 0x3ff

    const v8, 0xdc00

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v3

    :goto_2
    goto :goto_0

    :cond_8
    return v1
.end method
