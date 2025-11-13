.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;
.super Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataGenerator.java"


# instance fields
.field private blacklist signerInfs:Ljava/util/List;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    sget-object v4, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v5

    :cond_1
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-static {v5, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    :try_start_0
    invoke-interface {p1, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p2, :cond_2

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data processing exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->generate(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    :cond_5
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    move-object v11, v5

    goto :goto_3

    :cond_6
    move-object v11, v5

    :goto_3
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {v7, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v5, v12

    move-object v8, v4

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    sget-object v8, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v6, v8, v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v8, p1, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v8

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method can only be used with SignerInfoGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    return-object v0
.end method
