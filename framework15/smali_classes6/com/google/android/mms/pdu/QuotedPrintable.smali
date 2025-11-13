.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static blacklist ESCAPE_CHAR:B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x3d

    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist decodeQuotedPrintable([B)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-byte v3, p0, v2

    sget-byte v4, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v3, v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    :try_start_0
    aget-byte v4, p0, v4

    int-to-char v4, v4

    const/16 v5, 0xd

    if-ne v5, v4, :cond_1

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    int-to-char v4, v4

    const/16 v5, 0xa

    if-ne v5, v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    int-to-char v6, v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v5

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v4

    return-object v0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
