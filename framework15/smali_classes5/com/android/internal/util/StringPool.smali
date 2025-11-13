.class public final Lcom/android/internal/util/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final blacklist mPool:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    return-void
.end method

.method private static blacklist contentEquals(Ljava/lang/String;[CII)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist get([CII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    aget-char v3, p1, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x7

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-static {v2, p1, p2, p3}, Lcom/android/internal/util/StringPool;->contentEquals(Ljava/lang/String;[CII)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v4, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    aput-object v3, v4, v1

    return-object v3
.end method
