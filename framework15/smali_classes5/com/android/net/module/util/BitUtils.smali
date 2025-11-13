.class public Lcom/android/net/module/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/BitUtils$NameOf;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {p3, v0}, Lcom/android/net/module/util/BitUtils$NameOf;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blacklist describeDifferences(JJLcom/android/net/module/util/BitUtils$NameOf;)Ljava/lang/String;
    .locals 10

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    and-long v4, p0, v0

    and-long v6, p2, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v9, v2, v4

    if-eqz v9, :cond_1

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v4, v5, p4, v9}, Lcom/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    :cond_1
    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const-string v2, "+"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v6, v7, p4, v2}, Lcom/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs blacklist packBitList([I)J
    .locals 2

    invoke-static {p0}, Lcom/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist packBits([I)J
    .locals 7

    const-wide/16 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static blacklist unpackBits(J)[I
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    and-long v6, p0, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aput v3, v1, v2

    move v2, v4

    :cond_0
    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
