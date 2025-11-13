.class public Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
.super Ljava/lang/Object;
.source "X509v3CertificateBuilder.java"


# instance fields
.field private blacklist extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private blacklist tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p6}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v3, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v4, p4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v3, p3, p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v4, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static blacklist booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    div-int/lit8 v2, v1, 0x8

    aget-byte v3, v0, v2

    aget-boolean v4, p0, v1

    if-eqz v4, :cond_0

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object v2

    :cond_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method private blacklist doGetExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object p0
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    return-object p0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot produce certificate signature"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist copyAndAddExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 5

    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->doGetExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->doGetExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist removeExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doRemoveExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-object p0
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-object p0
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-object p0
.end method

.method public blacklist setIssuerUniqueID([Z)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    return-object p0
.end method

.method public blacklist setSubjectUniqueID([Z)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    return-object p0
.end method
