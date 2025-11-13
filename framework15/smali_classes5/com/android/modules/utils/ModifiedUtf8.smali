.class public Lcom/android/modules/utils/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist countBytes(Ljava/lang/String;Z)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    goto :goto_1

    :cond_0
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_1

    const-wide/16 v5, 0x2

    add-long/2addr v0, v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x3

    add-long/2addr v0, v5

    :goto_1
    if-eqz p1, :cond_3

    const-wide/32 v5, 0xffff

    cmp-long v5, v0, v5

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string v6, "String more than 65535 UTF bytes long"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method public static blacklist decode([B[CII)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p0, v0

    int-to-char v0, v0

    aput-char v0, p1, v1

    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_0
    aget-char v0, p1, v1

    move v4, v0

    const/16 v5, 0xe0

    and-int/2addr v0, v5

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_3

    const-string v0, "bad second byte at "

    if-ge v2, p3, :cond_2

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v4, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    and-int/lit16 v0, v4, 0xf0

    if-ne v0, v5, :cond_6

    add-int/lit8 v0, v2, 0x1

    if-ge v0, p3, :cond_5

    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p0, v0

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v3, :cond_4

    and-int/lit16 v6, v0, 0xc0

    if-ne v6, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v6, v4, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v7, v2, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, p1, v1

    move v1, v3

    move v0, v5

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad second or third byte at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad third byte at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad byte at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static blacklist encode([BILjava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    int-to-byte v4, v2

    aput-byte v4, p0, p1

    move p1, v3

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v3, 0x1

    and-int/lit8 v4, v2, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x1

    and-int/lit8 v4, v2, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
