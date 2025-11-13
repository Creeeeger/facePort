.class public Lcom/android/internal/org/bouncycastle/cms/SignerId;
.super Ljava/lang/Object;
.source "SignerId.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field private blacklist baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectKeyIdentifier()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSubjectKeyIdentifier()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
