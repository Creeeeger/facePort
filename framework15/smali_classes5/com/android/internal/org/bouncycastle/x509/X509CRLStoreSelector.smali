.class public Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field private blacklist attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

.field private blacklist completeCRLEnabled:Z

.field private blacklist deltaCRLIndicator:Z

.field private blacklist issuingDistributionPoint:[B

.field private blacklist issuingDistributionPointEnabled:Z

.field private blacklist maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static blacklist getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
    .locals 4

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create from null selector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    return-object v0
.end method

.method public blacklist getAttrCertificateChecking()Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public blacklist getIssuingDistributionPoint()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isCompleteCRLEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public blacklist isDeltaCRLIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public blacklist isIssuingDistributionPointEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    nop

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    return v1

    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v4, :cond_5

    if-eqz v3, :cond_6

    return v1

    :cond_5
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_6
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-super {p0, v1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v1

    return v1

    :catch_0
    move-exception v3

    return v1
.end method

.method public whitelist test-api match(Ljava/security/cert/CRL;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAttrCertificateChecking(Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    return-void
.end method

.method public blacklist setCompleteCRLEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return-void
.end method

.method public blacklist setDeltaCRLIndicatorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return-void
.end method

.method public blacklist setIssuingDistributionPoint([B)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    return-void
.end method

.method public blacklist setIssuingDistributionPointEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public blacklist setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-void
.end method
