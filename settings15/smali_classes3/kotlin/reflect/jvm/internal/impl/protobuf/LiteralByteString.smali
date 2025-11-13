.class public Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bytes:[B

.field public hash:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    return-void
.end method


# virtual methods
.method public copyToInternal(III[B)V
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-static {p0, p1, p4, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz v0, :cond_4

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->equalsRange(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;II)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equalsRange(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;II)Z
    .locals 4

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length v1, v0

    if-gt p3, v1, :cond_3

    add-int v1, p2, p3

    array-length v2, v0

    if-gt v1, v2, :cond_2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p3, :cond_1

    aget-byte v2, p0, v1

    aget-byte v3, v0, p2

    if-eq v2, v3, :cond_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length p0, p0

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTreeDepth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    :cond_1
    return v0
.end method

.method public final isBalanced()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isValidUtf8()Z
    .locals 2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V

    return-object v0
.end method

.method public final partialHash(III)I
    .locals 2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v1, p0, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final partialIsValidUtf8(III)I
    .locals 6

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    add-int/2addr p3, p2

    if-eqz p1, :cond_e

    if-lt p2, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-byte v0, p1

    const/16 v1, -0x41

    const/4 v2, -0x1

    const/16 v3, -0x20

    if-ge v0, v3, :cond_3

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-int/lit8 p1, p2, 0x1

    aget-byte p2, p0, p2

    if-le p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    move p1, v2

    goto/16 :goto_3

    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_8

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, p2, 0x1

    aget-byte p2, p0, p2

    if-lt p1, p3, :cond_4

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p1

    goto/16 :goto_3

    :cond_4
    move v5, p2

    move p2, p1

    move p1, v5

    :cond_5
    if-gt p1, v1, :cond_2

    const/16 v4, -0x60

    if-ne v0, v3, :cond_6

    if-lt p1, v4, :cond_2

    :cond_6
    const/16 v3, -0x13

    if-ne v0, v3, :cond_7

    if-ge p1, v4, :cond_2

    :cond_7
    add-int/lit8 p1, p2, 0x1

    aget-byte p2, p0, p2

    if-le p2, v1, :cond_1

    goto :goto_0

    :cond_8
    shr-int/lit8 v3, p1, 0x8

    not-int v3, v3

    int-to-byte v3, v3

    if-nez v3, :cond_a

    add-int/lit8 p1, p2, 0x1

    aget-byte v3, p0, p2

    if-lt p1, p3, :cond_9

    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p1

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    goto :goto_1

    :cond_a
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p2

    move p2, p1

    move p1, v5

    :goto_1
    if-nez p2, :cond_d

    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    if-lt p2, p3, :cond_c

    const/16 p0, -0xc

    if-gt v0, p0, :cond_2

    if-gt v3, v1, :cond_2

    if-le p1, v1, :cond_b

    goto :goto_0

    :cond_b
    shl-int/lit8 p0, v3, 0x8

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x10

    xor-int/2addr p0, p1

    move p1, p0

    goto :goto_3

    :cond_c
    move v5, p2

    move p2, p1

    move p1, v5

    :cond_d
    if-gt v3, v1, :cond_2

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v3, v0

    shr-int/lit8 v0, v3, 0x1e

    if-nez v0, :cond_2

    if-gt p2, v1, :cond_2

    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v1, :cond_e

    goto :goto_0

    :cond_e
    :goto_2
    invoke-static {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p1

    :goto_3
    return p1
.end method

.method public final peekCachedHashCode()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public final toString$1()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length v1, p0

    const/4 v2, 0x0

    const-string v3, "UTF-8"

    invoke-direct {v0, p0, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public final writeToInternal(Ljava/io/OutputStream;II)V
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p1, p0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
