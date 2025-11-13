.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# static fields
.field private static final blacklist HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

.field private blacklist hashes:Ljava/util/Map;

.field blacklist signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

.field blacklist signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

.field blacklist signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    :goto_0
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private blacklist getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    const-string v0, "Malformed content."

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static blacklist replaceCertificatesAndCRLs(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/util/Store;Lcom/android/internal/org/bouncycastle/util/Store;Lcom/android/internal/org/bouncycastle/util/Store;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v3

    :cond_4
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v7

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    move-object v5, v3

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v3, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public static blacklist replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .locals 10

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    sget-object v5, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v7, 0x2

    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v7, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist getAttributeCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignedContent()Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    return-object v0
.end method

.method public blacklist getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    invoke-direct {v5, v3, v4, v7, v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    :goto_1
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    new-instance v8, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-direct {v8, v3, v4, v6, v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public blacklist isCertificateManagementMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDetachedSignature()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
