.class public Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.source "BERApplicationSpecific.java"


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;->getEncodedVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)[B

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, p3}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;->getEncoding(ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method

.method constructor blacklist <init>(ZI[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method

.method private static blacklist getEncodedVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    const-string v3, "BER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getEncoding(ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "BER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;->getLengthOfHeader([B)I

    move-result v1

    array-length v2, v0

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;->octets:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodedIndef(ZII[B)V

    return-void
.end method
