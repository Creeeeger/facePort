.class public Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "DERBMPString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private final blacklist string:[C


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([B)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([C)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    .locals 4

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    const-string/jumbo v2, "illegal object in getInstance: "

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

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    return-object v0
.end method


# virtual methods
.method protected blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result v1

    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    if-eqz p2, :cond_0

    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x0

    and-int/lit8 v4, v0, -0x4

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    aget-char v7, v7, v3

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    add-int/lit8 v9, v3, 0x1

    aget-char v8, v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    add-int/lit8 v10, v3, 0x2

    aget-char v9, v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    add-int/lit8 v11, v3, 0x3

    aget-char v10, v10, v11

    add-int/lit8 v3, v3, 0x4

    shr-int/lit8 v11, v7, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    int-to-byte v11, v7

    aput-byte v11, v2, v6

    shr-int/lit8 v6, v8, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x2

    aput-byte v6, v2, v11

    int-to-byte v6, v8

    const/4 v11, 0x3

    aput-byte v6, v2, v11

    shr-int/lit8 v6, v9, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x4

    aput-byte v6, v2, v11

    const/4 v6, 0x5

    int-to-byte v11, v9

    aput-byte v11, v2, v6

    shr-int/lit8 v6, v10, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x6

    aput-byte v6, v2, v11

    const/4 v6, 0x7

    int-to-byte v11, v10

    aput-byte v11, v2, v6

    invoke-virtual {p1, v2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    if-ge v3, v0, :cond_3

    const/4 v1, 0x0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    aget-char v7, v7, v3

    add-int/2addr v3, v6

    add-int/lit8 v8, v1, 0x1

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v1

    add-int/lit8 v1, v8, 0x1

    int-to-byte v9, v7

    aput-byte v9, v2, v8

    if-lt v3, v0, :cond_2

    invoke-virtual {p1, v2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    :cond_3
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->string:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
