.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ApplicationSpecific.java"


# instance fields
.field protected final blacklist isConstructed:Z

.field protected final blacklist octets:[B

.field protected final blacklist tag:I


# direct methods
.method constructor blacklist <init>(ZI[B)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    .locals 4

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct object from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    return-object v0
.end method

.method protected static blacklist getLengthOfHeader([B)I
    .locals 5

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7f

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x2

    return v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return v2
.end method

.method private blacklist replaceTagNumber(I[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x7f

    if-eqz v4, :cond_1

    :goto_0
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v3, v2, 0xff

    move v2, v4

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v4, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    array-length v2, p2

    sub-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-static {p2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    return-object v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZII[B)V

    return-void
.end method

.method blacklist encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getApplicationTag()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    return v0
.end method

.method public blacklist getContents()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_0

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_0
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unsupported tag number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CONSTRUCTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "APPLICATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    if-eqz v1, :cond_1

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, " #null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
