.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;
.super Ljava/lang/Object;
.source "CMSSignedGenerator.java"


# static fields
.field public static final blacklist DATA:Ljava/lang/String;

.field public static final blacklist DIGEST_MD5:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA1:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA224:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA256:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA384:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA512:Ljava/lang/String;

.field private static final blacklist EC_ALGORITHMS:Ljava/util/Map;

.field public static final blacklist ENCRYPTION_DSA:Ljava/lang/String;

.field public static final blacklist ENCRYPTION_ECDSA:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

.field public static final blacklist ENCRYPTION_RSA:Ljava/lang/String;

.field public static final blacklist ENCRYPTION_RSA_PSS:Ljava/lang/String;

.field private static final blacklist NO_PARAMS:Ljava/util/Set;


# instance fields
.field protected blacklist _signers:Ljava/util/List;

.field protected blacklist certs:Ljava/util/List;

.field protected blacklist crls:Ljava/util/List;

.field protected blacklist digests:Ljava/util/Map;

.field protected blacklist signerGens:Ljava/util/List;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DATA:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->digests:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addAttributeCertificate(Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addAttributeCertificates(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist addCRL(Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addCRLs(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist addCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addCertificates(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist addSignerInfoGenerator(Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected blacklist getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digest"

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getGeneratedDigests()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->digests:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
