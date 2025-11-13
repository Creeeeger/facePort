.class public final Lcom/android/internal/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist append([BB)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    :cond_0
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v2, v1

    return-object v2
.end method

.method public static blacklist append([II)[I
    .locals 3

    if-nez p0, :cond_0

    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v1, v0

    return-object v1
.end method

.method public static blacklist append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v0

    return-object v1
.end method

.method public static blacklist append([SS)[S
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    :cond_0
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short p1, v2, v1

    return-object v2
.end method

.method public static blacklist areAllZeroes([BII)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static blacklist areEqual([BII[BII)Z
    .locals 6

    sub-int v0, p2, p1

    sub-int v1, p5, p4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist areEqual([B[B)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([C[C)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([I[I)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([J[J)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([S[S)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([Z[Z)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist clear([B)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public static blacklist clear([I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public static blacklist clone([B)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([B[B)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([C)[C
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([I)[I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([J)[J
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([J[J)[J
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigInteger;

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([S)[S
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([Z)[Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_0
    return-object v0
.end method

.method public static blacklist clone([[B)[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist clone([[[B)[[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [[[B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist compareUnsigned([B[B)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-ge v5, v6, :cond_3

    return v1

    :cond_3
    if-le v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_6

    return v1

    :cond_6
    array-length v1, p0

    array-length v4, p1

    if-le v1, v4, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public static blacklist concatenate([B[B)[B
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([B[B[B)[B
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([B[B[B[B)[B
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_2
    if-nez p3, :cond_3

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_3
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([[B)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, p0

    if-eq v3, v4, :cond_1

    aget-object v4, p0, v3

    aget-object v5, p0, v3

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, p0, v3

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static blacklist concatenate([I[I)[I
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([S[S)[S
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist constantTimeAreEqual(I[BI[BI)Z
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    if-ltz p0, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p0

    if-gt p2, v0, :cond_3

    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p4, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    add-int v3, p4, v1

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'bOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'aOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'len\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'b\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'a\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist constantTimeAreEqual([B[B)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v2, p0

    goto :goto_0

    :cond_2
    array-length v2, p1

    :goto_0
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_1
    if-eq v4, v2, :cond_3

    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_4

    aget-byte v5, p1, v4

    aget-byte v6, p1, v4

    not-int v6, v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    :goto_3
    return v0
.end method

.method public static blacklist contains([BB)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([CC)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([II)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([JJ)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([SS)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([ZZ)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copyOf([BI)[B
    .locals 3

    new-array v0, p1, [B

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([CI)[C
    .locals 3

    new-array v0, p1, [C

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([II)[I
    .locals 3

    new-array v0, p1, [I

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([JI)[J
    .locals 3

    new-array v0, p1, [J

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3

    new-array v0, p1, [Ljava/math/BigInteger;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([SI)[S
    .locals 3

    new-array v0, p1, [S

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([ZI)[Z
    .locals 3

    new-array v0, p1, [Z

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([BII)[B
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist copyOfRange([CII)[C
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [C

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist copyOfRange([III)[I
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [I

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist copyOfRange([JII)[J
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [J

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [Ljava/math/BigInteger;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist copyOfRange([SII)[S
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [S

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist copyOfRange([ZII)[Z
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [Z

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist fill([BB)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static blacklist fill([BIB)V
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static blacklist fill([BIIB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static blacklist fill([CC)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public static blacklist fill([CIIC)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    return-void
.end method

.method public static blacklist fill([II)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static blacklist fill([III)V
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public static blacklist fill([IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public static blacklist fill([JIIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public static blacklist fill([JIJ)V
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0, p2, p3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public static blacklist fill([JJ)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist fill([SIIS)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public static blacklist fill([SIS)V
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public static blacklist fill([SS)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method

.method public static blacklist fill([ZIIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void
.end method

.method public static blacklist fill([ZZ)V
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private static blacklist getLength(II)I
    .locals 4

    sub-int v0, p1, p0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist hashCode([B)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([BII)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move v0, p2

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([C)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([I)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([III)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move v0, p2

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    add-int v2, p1, v0

    aget v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([J)I
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-wide v2, p0, v0

    mul-int/lit16 v1, v1, 0x101

    long-to-int v4, v2

    xor-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x101

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([JII)I
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move v0, p2

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    mul-int/lit16 v1, v1, 0x101

    long-to-int v4, v2

    xor-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x101

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([Ljava/lang/Object;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([S)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist hashCode([[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist hashCode([[S)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist hashCode([[[S)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist isNullOrContainsNull([Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isNullOrEmpty([B)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isNullOrEmpty([I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist prepend([BB)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    :cond_0
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v3, v0

    return-object v3
.end method

.method public static blacklist prepend([II)[I
    .locals 4

    if-nez p0, :cond_0

    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v1, v2

    return-object v1
.end method

.method public static blacklist prepend([SS)[S
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    :cond_0
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short p1, v3, v0

    return-object v3
.end method

.method public static blacklist reverse([B)[B
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    new-array v2, v1, [B

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static blacklist reverse([I)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    new-array v2, v1, [I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget v0, p0, v0

    aput v0, v2, v1

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method
