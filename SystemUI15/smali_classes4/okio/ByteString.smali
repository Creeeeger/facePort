.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    new-instance v0, Lokio/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static indexOf$default(Lokio/ByteString;Lokio/ByteString;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lokio/ByteString;->data:[B

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->indexOf(I[B)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;)I
    .locals 1

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->lastIndexOf(I[B)I

    move-result p0

    return p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v0, :cond_2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sub-int v3, v0, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, v1}, Lokio/ByteString;-><init>([B)V

    const-class v0, Lokio/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p0, "byteCount < 0: "

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static substring$default(Lokio/ByteString;III)Lokio/ByteString;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget p2, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object p0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 12

    iget-object p0, p0, Lokio/ByteString;->data:[B

    sget-object v0, Lokio/-Base64;->BASE64:[B

    array-length v1, p0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p0, v4

    add-int/lit8 v8, v4, 0x2

    aget-byte v6, p0, v6

    add-int/lit8 v4, v4, 0x3

    aget-byte v8, p0, v8

    add-int/lit8 v9, v5, 0x1

    and-int/lit16 v10, v7, 0xff

    shr-int/2addr v10, v2

    aget-byte v10, v0, v10

    aput-byte v10, v1, v5

    add-int/lit8 v10, v5, 0x2

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v11, v6, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v7, v11

    aget-byte v7, v0, v7

    aput-byte v7, v1, v9

    add-int/lit8 v7, v5, 0x3

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v2

    and-int/lit16 v9, v8, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v6, v9

    aget-byte v6, v0, v6

    aput-byte v6, v1, v10

    add-int/lit8 v5, v5, 0x4

    and-int/lit8 v6, v8, 0x3f

    aget-byte v6, v0, v6

    aput-byte v6, v1, v7

    goto :goto_0

    :cond_0
    array-length v6, p0

    sub-int/2addr v6, v3

    const/4 v3, 0x1

    const/16 v7, 0x3d

    if-eq v6, v3, :cond_2

    if-eq v6, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte p0, p0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v6, v4, 0xff

    shr-int/2addr v6, v2

    aget-byte v6, v0, v6

    aput-byte v6, v1, v5

    add-int/lit8 v6, v5, 0x2

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v8, p0, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v4, v8

    aget-byte v4, v0, v4

    aput-byte v4, v1, v3

    add-int/lit8 v5, v5, 0x3

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v2

    aget-byte p0, v0, p0

    aput-byte p0, v1, v6

    aput-byte v7, v1, v5

    goto :goto_1

    :cond_2
    aget-byte p0, p0, v4

    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v4, p0, 0xff

    shr-int/lit8 v2, v4, 0x2

    aget-byte v2, v0, v2

    aput-byte v2, v1, v5

    add-int/lit8 v2, v5, 0x2

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, v0, p0

    aput-byte p0, v1, v3

    add-int/lit8 v5, v5, 0x3

    aput-byte v7, v1, v2

    aput-byte v7, v1, v5

    :goto_1
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public final compareTo(Lokio/ByteString;)I
    .locals 9

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_1

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_1
    move v3, v6

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ge v0, v1, :cond_1

    goto :goto_1

    :goto_2
    return v3
.end method

.method public digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance p1, Lokio/ByteString;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lokio/ByteString;-><init>([B)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v3, p0

    if-ne v1, v3, :cond_1

    array-length v1, p0

    invoke-virtual {p1, v2, v2, v1, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getData$external__okio__android_common__okio_lib()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public getSize$external__okio__android_common__okio_lib()I
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->hashCode:I

    :goto_0
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public indexOf(I[B)I
    .locals 4

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gt p1, v0, :cond_1

    :goto_0
    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v3, p2

    invoke-static {v2, p1, v1, p2, v3}, Lokio/-SegmentedByteString;->arrayRangeEquals([BII[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 0

    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {p0, p2, p1}, Lokio/ByteString;->indexOf(I[B)I

    move-result p0

    return p0
.end method

.method public internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public internalGet$external__okio__android_common__okio_lib(I)B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public lastIndexOf(I[B)I
    .locals 3

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p1

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p2

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lokio/ByteString;->data:[B

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {v0, p1, v1, p2, v2}, Lokio/-SegmentedByteString;->arrayRangeEquals([BII[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method public rangeEquals(III[B)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v0, p0

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p4

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    invoke-static {p0, p1, p2, p4, p3}, Lokio/-SegmentedByteString;->arrayRangeEquals([BII[BI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public rangeEquals(ILokio/ByteString;I)Z
    .locals 1

    iget-object p0, p0, Lokio/ByteString;->data:[B

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, p3, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    return p0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 2

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p2

    :cond_0
    if-ltz p1, :cond_4

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    if-gt p2, v1, :cond_3

    sub-int v1, p2, p1

    if-ltz v1, :cond_2

    if-nez p1, :cond_1

    array-length v1, v0

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lokio/ByteString;

    array-length v1, v0

    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt__ArraysJVMKt;->copyOfRangeToIndexCheck(II)V

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lokio/ByteString;-><init>([B)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    array-length p0, v0

    const-string p1, "endIndex > length("

    const-string p2, ")"

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_0

    goto :goto_3

    :cond_0
    array-length p0, v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_3

    aget-byte v0, p0, v1

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    move-object p0, v0

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x1

    iget-object v3, v0, Lokio/ByteString;->data:[B

    array-length v4, v3

    if-nez v4, :cond_0

    const-string v0, "[size=0]"

    goto/16 :goto_f

    :cond_0
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_1
    :goto_0
    const/16 v10, 0x40

    if-ge v6, v4, :cond_2f

    aget-byte v11, v3, v6

    const v12, 0xfffd

    const/16 v13, 0xa0

    const/16 v14, 0x7f

    const/16 v15, 0x20

    const/16 v5, 0xd

    const/16 v9, 0xa

    const/high16 v1, 0x10000

    if-ltz v11, :cond_d

    add-int/lit8 v17, v8, 0x1

    if-ne v8, v10, :cond_2

    goto/16 :goto_d

    :cond_2
    if-eq v11, v9, :cond_4

    if-eq v11, v5, :cond_4

    if-ltz v11, :cond_3

    if-ge v11, v15, :cond_3

    goto :goto_1

    :cond_3
    if-gt v14, v11, :cond_4

    if-ge v11, v13, :cond_4

    goto :goto_1

    :cond_4
    if-ne v11, v12, :cond_6

    :cond_5
    :goto_1
    const/4 v7, -0x1

    goto/16 :goto_d

    :cond_6
    if-ge v11, v1, :cond_7

    move v8, v2

    goto :goto_2

    :cond_7
    const/4 v8, 0x2

    :goto_2
    add-int/2addr v7, v8

    add-int/2addr v6, v2

    :goto_3
    move/from16 v8, v17

    if-ge v6, v4, :cond_1

    aget-byte v11, v3, v6

    if-ltz v11, :cond_1

    add-int/2addr v6, v2

    add-int/lit8 v17, v8, 0x1

    if-ne v8, v10, :cond_8

    goto/16 :goto_d

    :cond_8
    if-eq v11, v9, :cond_a

    if-eq v11, v5, :cond_a

    if-ltz v11, :cond_9

    if-ge v11, v15, :cond_9

    goto :goto_4

    :cond_9
    if-gt v14, v11, :cond_a

    if-ge v11, v13, :cond_a

    goto :goto_4

    :cond_a
    if-ne v11, v12, :cond_b

    :goto_4
    goto :goto_1

    :cond_b
    if-ge v11, v1, :cond_c

    move v8, v2

    goto :goto_5

    :cond_c
    const/4 v8, 0x2

    :goto_5
    add-int/2addr v7, v8

    goto :goto_3

    :cond_d
    shr-int/lit8 v1, v11, 0x5

    const/4 v12, -0x2

    const/16 v13, 0x80

    if-ne v1, v12, :cond_16

    add-int/lit8 v1, v6, 0x1

    if-gt v4, v1, :cond_e

    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_e
    aget-byte v1, v3, v1

    and-int/lit16 v12, v1, 0xc0

    if-ne v12, v13, :cond_15

    xor-int/lit16 v1, v1, 0xf80

    shl-int/lit8 v11, v11, 0x6

    xor-int/2addr v1, v11

    if-ge v1, v13, :cond_f

    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_f
    add-int/lit8 v11, v8, 0x1

    if-ne v8, v10, :cond_10

    goto/16 :goto_d

    :cond_10
    if-eq v1, v9, :cond_12

    if-eq v1, v5, :cond_12

    if-ltz v1, :cond_11

    if-ge v1, v15, :cond_11

    goto :goto_6

    :cond_11
    if-gt v14, v1, :cond_12

    const/16 v5, 0xa0

    if-ge v1, v5, :cond_12

    goto :goto_6

    :cond_12
    const v5, 0xfffd

    if-ne v1, v5, :cond_13

    :goto_6
    goto :goto_1

    :cond_13
    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_14

    move v1, v2

    goto :goto_7

    :cond_14
    const/4 v1, 0x2

    :goto_7
    add-int/2addr v7, v1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x2

    add-int/2addr v6, v1

    move v8, v11

    goto/16 :goto_0

    :cond_15
    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_16
    const/4 v1, 0x2

    shr-int/lit8 v14, v11, 0x4

    const v15, 0xe000

    const v5, 0xd800

    if-ne v14, v12, :cond_21

    add-int/lit8 v12, v6, 0x2

    if-gt v4, v12, :cond_17

    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_17
    add-int/lit8 v1, v6, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v14, v1, 0xc0

    if-ne v14, v13, :cond_20

    aget-byte v12, v3, v12

    and-int/lit16 v14, v12, 0xc0

    if-ne v14, v13, :cond_1f

    const v13, -0x1e080

    xor-int/2addr v12, v13

    shl-int/lit8 v1, v1, 0x6

    xor-int/2addr v1, v12

    shl-int/lit8 v11, v11, 0xc

    xor-int/2addr v1, v11

    const/16 v11, 0x800

    if-ge v1, v11, :cond_18

    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_18
    if-gt v5, v1, :cond_19

    if-ge v1, v15, :cond_19

    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_19
    add-int/lit8 v5, v8, 0x1

    if-ne v8, v10, :cond_1a

    goto/16 :goto_d

    :cond_1a
    if-eq v1, v9, :cond_1c

    const/16 v8, 0xd

    if-eq v1, v8, :cond_1c

    if-ltz v1, :cond_1b

    const/16 v8, 0x20

    if-ge v1, v8, :cond_1b

    goto :goto_8

    :cond_1b
    const/16 v8, 0x7f

    if-gt v8, v1, :cond_1c

    const/16 v8, 0xa0

    if-ge v1, v8, :cond_1c

    goto :goto_8

    :cond_1c
    const v8, 0xfffd

    if-ne v1, v8, :cond_1d

    :goto_8
    goto/16 :goto_1

    :cond_1d
    const/high16 v8, 0x10000

    if-ge v1, v8, :cond_1e

    move v1, v2

    goto :goto_9

    :cond_1e
    const/4 v1, 0x2

    :goto_9
    add-int/2addr v7, v1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v6, v6, 0x3

    :goto_a
    move v8, v5

    goto/16 :goto_0

    :cond_1f
    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_20
    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_21
    shr-int/lit8 v1, v11, 0x3

    if-ne v1, v12, :cond_2e

    add-int/lit8 v1, v6, 0x3

    if-gt v4, v1, :cond_22

    if-ne v8, v10, :cond_5

    goto/16 :goto_d

    :cond_22
    add-int/lit8 v12, v6, 0x1

    aget-byte v12, v3, v12

    and-int/lit16 v14, v12, 0xc0

    if-ne v14, v13, :cond_2d

    const/4 v14, 0x2

    add-int/lit8 v16, v6, 0x2

    aget-byte v14, v3, v16

    and-int/lit16 v9, v14, 0xc0

    if-ne v9, v13, :cond_2c

    aget-byte v1, v3, v1

    and-int/lit16 v9, v1, 0xc0

    if-ne v9, v13, :cond_2b

    const v9, 0x381f80

    xor-int/2addr v1, v9

    shl-int/lit8 v9, v14, 0x6

    xor-int/2addr v1, v9

    shl-int/lit8 v9, v12, 0xc

    xor-int/2addr v1, v9

    shl-int/lit8 v9, v11, 0x12

    xor-int/2addr v1, v9

    const v9, 0x10ffff

    if-le v1, v9, :cond_23

    if-ne v8, v10, :cond_5

    goto :goto_d

    :cond_23
    if-gt v5, v1, :cond_24

    if-ge v1, v15, :cond_24

    if-ne v8, v10, :cond_5

    goto :goto_d

    :cond_24
    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_25

    if-ne v8, v10, :cond_5

    goto :goto_d

    :cond_25
    add-int/lit8 v5, v8, 0x1

    if-ne v8, v10, :cond_26

    goto :goto_d

    :cond_26
    const/16 v8, 0xa

    if-eq v1, v8, :cond_28

    const/16 v8, 0xd

    if-eq v1, v8, :cond_28

    if-ltz v1, :cond_27

    const/16 v8, 0x20

    if-ge v1, v8, :cond_27

    goto :goto_b

    :cond_27
    const/16 v8, 0x7f

    if-gt v8, v1, :cond_28

    const/16 v8, 0xa0

    if-ge v1, v8, :cond_28

    goto :goto_b

    :cond_28
    const v8, 0xfffd

    if-ne v1, v8, :cond_29

    :goto_b
    goto/16 :goto_1

    :cond_29
    const/high16 v8, 0x10000

    if-ge v1, v8, :cond_2a

    move v1, v2

    goto :goto_c

    :cond_2a
    const/4 v1, 0x2

    :goto_c
    add-int/2addr v7, v1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_a

    :cond_2b
    if-ne v8, v10, :cond_5

    goto :goto_d

    :cond_2c
    if-ne v8, v10, :cond_5

    goto :goto_d

    :cond_2d
    if-ne v8, v10, :cond_5

    goto :goto_d

    :cond_2e
    if-ne v8, v10, :cond_5

    :cond_2f
    :goto_d
    const-string v1, "\u2026]"

    const-string v2, "[size="

    const-string v3, "]"

    const/4 v4, -0x1

    if-ne v7, v4, :cond_35

    iget-object v4, v0, Lokio/ByteString;->data:[B

    array-length v5, v4

    if-gt v5, v10, :cond_30

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[hex="

    invoke-static {v1, v0, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_30
    array-length v3, v4

    sget v4, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    if-ne v10, v4, :cond_31

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v10

    :cond_31
    iget-object v4, v0, Lokio/ByteString;->data:[B

    array-length v5, v4

    if-gt v10, v5, :cond_34

    if-ltz v10, :cond_33

    array-length v5, v4

    if-ne v10, v5, :cond_32

    goto :goto_e

    :cond_32
    new-instance v0, Lokio/ByteString;

    array-length v5, v4

    invoke-static {v10, v5}, Lkotlin/collections/ArraysKt__ArraysJVMKt;->copyOfRangeToIndexCheck(II)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v0, v4}, Lokio/ByteString;-><init>([B)V

    :goto_e
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    array-length v0, v4

    const-string v1, "endIndex > length("

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    const-string v8, "\\\\"

    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v8, "\\n"

    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v8, "\\r"

    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v7, v4, :cond_36

    iget-object v0, v0, Lokio/ByteString;->data:[B

    array-length v0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_36
    const-string v0, "[text="

    invoke-static {v0, v5, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public final utf8()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public write$external__okio__android_common__okio_lib(ILokio/Buffer;)V
    .locals 1

    iget-object p0, p0, Lokio/ByteString;->data:[B

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Lokio/Buffer;->write([BII)V

    return-void
.end method
