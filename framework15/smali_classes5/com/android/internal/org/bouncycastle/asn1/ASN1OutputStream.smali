.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# instance fields
.field private blacklist os:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public static blacklist create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static blacklist create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public blacklist close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public blacklist flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method blacklist flushInternal()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method blacklist getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method blacklist getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final blacklist write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method final blacklist write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeElements(Ljava/util/Enumeration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final blacklist writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final blacklist writeEncoded(ZIB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeEncoded(ZIB[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    const/4 v0, 0x0

    array-length v1, p4

    invoke-virtual {p0, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncoded(ZIB[BIIB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    add-int/lit8 v0, p6, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    invoke-virtual {p0, p7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeEncoded(ZII[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    array-length v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    const/4 v0, 0x0

    array-length v1, p4

    invoke-virtual {p0, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncoded(ZI[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    const/4 v0, 0x0

    array-length v1, p3

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncoded(ZI[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncodedIndef(ZII[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    array-length v0, p4

    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeEncodedIndef(ZILjava/util/Enumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeElements(Ljava/util/Enumeration;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeEncodedIndef(ZI[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_0
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeLength(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    ushr-int/lit8 v2, v1, 0x8

    move v1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    :goto_1
    if-ltz v2, :cond_1

    shr-int v3, p1, v2

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :goto_2
    return-void
.end method

.method public blacklist writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method final blacklist writeTag(ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1f

    if-ge p3, v0, :cond_1

    or-int v0, p2, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    or-int/lit8 v0, p2, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    const/16 v0, 0x80

    if-ge p3, v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_3
    shr-int/lit8 p3, p3, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p3, 0x7f

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v3, 0x7f

    if-gt p3, v3, :cond_3

    array-length v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    :goto_0
    return-void
.end method
