.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SignerInfoGeneratorBuilder.java"


# instance fields
.field private blacklist digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

.field private blacklist directSignature:Z

.field private blacklist sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private blacklist signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private blacklist unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method private blacklist createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    :cond_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v0
.end method


# virtual methods
.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V

    return-object v1
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[B)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setDirectSignature(Z)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    return-object p0
.end method

.method public blacklist setSignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public blacklist setUnsignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method
