.class public Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;
.super Ljava/lang/Object;
.source "DefaultCMSSignatureEncryptionAlgorithmFinder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;


# static fields
.field private static final blacklist GOST_ENC:Ljava/util/Map;

.field private static final blacklist RSA_PKCS1d5:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->GOST_ENC:Ljava/util/Map;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist findEncryptionAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->GOST_ENC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->GOST_ENC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0

    :cond_1
    return-object p1
.end method
