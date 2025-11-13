.class public Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;
.super Ljava/lang/Object;
.source "CMSProcessableByteArray.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
.implements Lcom/android/internal/org/bouncycastle/cms/CMSReadable;


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    return-void
.end method


# virtual methods
.method public blacklist getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
