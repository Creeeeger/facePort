.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;,
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Selector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CRLSelector;

.field private final blacklist completeCRLEnabled:Z

.field private final blacklist deltaCRLIndicator:Z

.field private final blacklist issuingDistributionPoint:[B

.field private final blacklist issuingDistributionPointEnabled:Z

.field private final blacklist maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetdeltaCRLIndicator(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetcompleteCRLEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetmaxBaseCRLNumber(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetissuingDistributionPoint(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetissuingDistributionPointEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V

    return-void
.end method

.method public static blacklist getCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public blacklist getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIssuingDistributionPoint()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isCompleteCRLEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public blacklist isDeltaCRLIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public blacklist isIssuingDistributionPointEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public bridge synthetic blacklist match(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1
.end method

.method public blacklist match(Ljava/security/cert/CRL;)Z
    .locals 5

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v4, :cond_5

    if-eqz v3, :cond_6

    return v2

    :cond_5
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v2, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v3

    return v2
.end method
