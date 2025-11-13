.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;
.source "SignerInfoGenerator.java"


# instance fields
.field private blacklist calculatedDigest:[B

.field private blacklist certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

.field private final blacklist digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private final blacklist digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

.field private final blacklist sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private final blacklist sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final blacklist signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

.field private final blacklist signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private final blacklist unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    :goto_0
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    :goto_0
    if-eqz p5, :cond_1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    :goto_1
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method private blacklist getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "signatureAlgID"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digest"

    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public blacklist generate(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v3, v1, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    move-object v0, v5

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "DER"

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    move-object v9, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    move-object v9, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    move-object v9, v2

    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v2

    move-object v10, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v9, v1, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v3

    const-string v4, "encryptedDigest"

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    move-object v2, v5

    move-object v11, v2

    goto :goto_1

    :cond_2
    move-object v11, v2

    :goto_1
    nop

    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v10}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v2, v12

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "encoding error."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public blacklist getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public blacklist getCalculatedDigest()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCalculatingOutputStream()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGeneratedVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public blacklist getSignedAttributeTableGenerator()Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public blacklist getUnsignedAttributeTableGenerator()Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public blacklist hasAssociatedCertificate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method
