.class public Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509CertificateHolderSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field private blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist serialNumber:Ljava/math/BigInteger;

.field private blacklist subjectKeyId:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method private blacklist equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSubjectKeyIdentifier()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;->calculateKeyId(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v3, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    return v3

    :cond_3
    goto :goto_1

    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    :cond_5
    :goto_1
    return v1
.end method
