.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist isForCRLCheck:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    return-void
.end method

.method static blacklist checkCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "unable to process TBSCertificate"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    instance-of v0, v14, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v2, v14

    check-cast v2, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v2, v14, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_0

    move-object v2, v14

    check-cast v2, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    instance-of v0, v14, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_2

    move-object v0, v14

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    instance-of v0, v14, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v0, :cond_1c

    move-object v0, v14

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, -0x1

    const/4 v10, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-$$Nest$sfgetblocklist()Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->isSerialNumberBlockListed(Ljava/math/BigInteger;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate revocation of serial 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v15, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    :cond_4
    :goto_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v9, v4

    invoke-static {v2, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v18

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v19

    const/4 v7, 0x1

    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v4

    move-object v6, v4

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_7

    nop

    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v20

    const/4 v2, 0x0

    add-int/lit8 v4, v11, 0x1

    new-array v5, v4, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_2
    array-length v8, v5

    if-ge v4, v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v8, "2.5.29.32.0"

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    const-string v27, "2.5.29.32.0"

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v8

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v13, v5, v0

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v13}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v29, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v16, v11, 0x1

    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    goto :goto_4

    :cond_7
    add-int/lit8 v17, v11, 0x1

    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v21, v11, 0x1

    :goto_5
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v22

    if-eqz v22, :cond_9

    :try_start_1
    invoke-static/range {v22 .. v22}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object v9, v15

    move-object/from16 v26, v29

    move-object/from16 v29, v12

    move-object v12, v5

    move-object v5, v6

    goto/16 :goto_12

    :cond_9
    :try_start_2
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v23

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v24
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_6
    nop

    const/16 v25, 0x0

    :try_start_3
    invoke-static/range {v24 .. v24}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4

    nop

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v25

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v26

    move/from16 v27, v11

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v28

    if-eqz v28, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v7

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v30, v2

    goto :goto_7

    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Target certificate in certification path does not match targetConstraints."

    move/from16 v30, v2

    const/4 v2, 0x0

    invoke-direct {v0, v7, v10, v15, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_b
    move/from16 v30, v2

    :goto_7
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    move-object/from16 v33, v0

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    move-object/from16 v33, v0

    :goto_9
    const/4 v0, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/16 v28, 0x1

    add-int/lit8 v2, v2, -0x1

    move/from16 v34, v21

    move/from16 v35, v27

    move-object/from16 v21, v3

    move-object/from16 v27, v26

    move v3, v2

    move-object/from16 v26, v13

    move/from16 v2, v16

    move-object/from16 v13, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v8

    move/from16 v8, v17

    :goto_a
    if-ltz v3, :cond_15

    invoke-static {}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-$$Nest$sfgetblocklist()Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->isPublicKeyBlockListed(Ljava/security/PublicKey;)Z

    move-result v10

    if-nez v10, :cond_14

    sub-int v10, v11, v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/security/cert/X509Certificate;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_e

    move/from16 v0, v16

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    move/from16 v28, v8

    move v8, v0

    :try_start_4
    invoke-static {v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_4
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_3

    nop

    move/from16 v36, v2

    const/4 v0, 0x0

    move-object/from16 v2, p1

    move/from16 v30, v3

    move-object/from16 v3, v20

    move-object/from16 v31, v4

    move-object/from16 v4, v18

    move-object/from16 v37, v5

    move-object/from16 v5, v33

    move-object/from16 v38, v6

    move/from16 v6, v30

    move-object/from16 v39, v7

    move-object v7, v13

    move-object/from16 v40, v9

    move-object/from16 v9, v24

    move/from16 v41, v10

    const/4 v0, 0x0

    move-object/from16 v10, v23

    invoke-static/range {v2 .. v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    iget-boolean v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move-object/from16 v9, v29

    move/from16 v10, v30

    invoke-static {v15, v10, v9, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    iget-boolean v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move v7, v11

    move-object/from16 v11, p1

    move-object/from16 v29, v12

    move v12, v10

    move-object v3, v14

    move-object/from16 v14, v22

    move-object v6, v15

    move-object/from16 v15, v37

    move/from16 v16, v28

    move/from16 v17, v2

    move-object v5, v13

    move-object/from16 v13, v26

    invoke-static/range {v11 .. v17}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    invoke-static {v6, v10, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    move/from16 v4, v36

    invoke-static {v6, v10, v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    move/from16 v11, v41

    if-eq v11, v7, :cond_13

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_11

    if-ne v11, v14, :cond_f

    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v26, v9

    move/from16 v14, v28

    move/from16 v15, v34

    move/from16 v1, v35

    move-object/from16 v12, v37

    move-object/from16 v9, v39

    goto/16 :goto_e

    :cond_f
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Version 1 certificates can\'t be used as CA ones."

    invoke-direct {v12, v14, v0, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    :cond_10
    const/4 v14, 0x1

    :cond_11
    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    move/from16 v15, v34

    move-object/from16 v12, v37

    invoke-static {v6, v10, v12, v2, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    invoke-static {v6, v10, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    invoke-static {v6, v10, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v6, v10, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v15

    move/from16 v14, v28

    invoke-static {v6, v10, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v14

    invoke-static {v6, v10, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v6, v10, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v15

    invoke-static {v6, v10, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v14

    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move-object/from16 v26, v9

    move/from16 v9, v35

    invoke-static {v6, v10, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v9

    invoke-static {v6, v10, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v9

    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object/from16 v17, v2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_c

    :cond_12
    move-object/from16 v17, v2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    :goto_c
    move/from16 v22, v9

    move-object/from16 v9, v39

    invoke-static {v6, v10, v2, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v28, v2

    :try_start_6
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v10, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_1

    nop

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    move-object/from16 v25, v5

    move v8, v14

    move/from16 v34, v15

    move-object/from16 v27, v21

    move/from16 v35, v22

    move-object/from16 v21, v2

    move v2, v4

    move-object/from16 v22, v17

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v28, v2

    :goto_d
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Next working key could not be retrieved."

    invoke-direct {v2, v1, v0, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_13
    move-object/from16 v26, v9

    move/from16 v14, v28

    move/from16 v15, v34

    move/from16 v1, v35

    move-object/from16 v12, v37

    move-object/from16 v9, v39

    :goto_e
    move/from16 v35, v1

    move-object/from16 v22, v2

    move v2, v4

    move-object v0, v5

    move v8, v14

    move/from16 v34, v15

    :goto_f
    add-int/lit8 v1, v10, -0x1

    move-object/from16 v14, p2

    move-object v15, v6

    move v11, v7

    move-object v7, v9

    move-object v5, v12

    move-object/from16 v12, v29

    move-object/from16 v4, v31

    move-object/from16 v6, v38

    move-object/from16 v9, v40

    const/4 v10, 0x0

    move-object/from16 v29, v26

    move-object/from16 v26, v13

    move-object v13, v0

    move-object v0, v3

    move v3, v1

    move-object/from16 v1, p0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v38, v6

    move-object/from16 v40, v9

    move-object v6, v15

    move/from16 v15, v34

    move/from16 v1, v35

    move v4, v2

    move-object v9, v7

    move v7, v11

    move v11, v10

    move v10, v3

    move-object v3, v14

    move/from16 v14, v28

    move-object/from16 v42, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v42

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move/from16 v17, v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v1, v3, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_14
    move v10, v3

    move-object/from16 v31, v4

    move-object/from16 v38, v6

    move v14, v8

    move-object v6, v15

    move v4, v2

    move-object/from16 v42, v12

    move-object v12, v5

    move-object v5, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate revocation of public key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v2, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_15
    move v10, v3

    move-object/from16 v31, v4

    move-object/from16 v38, v6

    move v14, v8

    move-object/from16 v40, v9

    move-object v6, v15

    move/from16 v15, v34

    move/from16 v17, v35

    move v4, v2

    move-object v9, v7

    move v7, v11

    move-object/from16 v42, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v42

    invoke-static {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v1

    add-int/lit8 v3, v10, 0x1

    invoke-static {v6, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v11, v2

    goto :goto_10

    :cond_16
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    move-object v11, v2

    :goto_10
    add-int/lit8 v3, v10, 0x1

    invoke-static {v6, v3, v9, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    add-int/lit8 v8, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move-object/from16 v28, v5

    move v5, v8

    move-object v8, v6

    move-object v6, v12

    move/from16 v34, v7

    move-object/from16 v7, v22

    move-object/from16 v39, v9

    move-object v9, v8

    move-object v8, v13

    invoke-static/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-gtz v1, :cond_18

    if-eqz v2, :cond_17

    goto :goto_11

    :cond_17
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Path processing failed on policy."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v9, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_18
    :goto_11
    new-instance v3, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v5, v38

    invoke-direct {v3, v5, v2, v4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v3

    :catch_4
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object v9, v15

    move-object/from16 v26, v29

    move-object/from16 v29, v12

    move-object v12, v5

    move-object v5, v6

    move-object v1, v0

    move-object v0, v1

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :catch_5
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object v9, v15

    move-object/from16 v26, v29

    move-object/from16 v29, v12

    move-object v12, v5

    move-object v5, v6

    :goto_12
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_19
    move-object v5, v6

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object/from16 v29, v12

    move-object v9, v15

    :try_start_7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_7
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v0

    goto :goto_13

    :catch_7
    move-exception v0

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object/from16 v29, v12

    move-object v9, v15

    :goto_13
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v9, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_1a
    move-object v9, v15

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_1b
    move-object v9, v15

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object v9, v15

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
