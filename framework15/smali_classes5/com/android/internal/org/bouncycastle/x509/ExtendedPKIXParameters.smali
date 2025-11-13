.class public Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# static fields
.field public static final blacklist CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final blacklist PKIX_VALIDITY_MODEL:I


# instance fields
.field private blacklist additionalLocationsEnabled:Z

.field private blacklist additionalStores:Ljava/util/List;

.field private blacklist attrCertCheckers:Ljava/util/Set;

.field private blacklist necessaryACAttributes:Ljava/util/Set;

.field private blacklist prohibitedACAttributes:Ljava/util/Set;

.field private blacklist selector:Lcom/android/internal/org/bouncycastle/util/Selector;

.field private blacklist stores:Ljava/util/List;

.field private blacklist trustedACIssuers:Ljava/util/Set;

.field private blacklist useDeltas:Z

.field private blacklist validityModel:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    return-void
.end method

.method public static blacklist getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addAddionalStore(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lcom/android/internal/org/bouncycastle/util/Store;)V

    return-void
.end method

.method public blacklist addAdditionalStore(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist addStore(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAdditionalStores()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttrCertCheckers()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNecessaryACAttributes()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProhibitedACAttributes()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStores()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTargetConstraints()Lcom/android/internal/org/bouncycastle/util/Selector;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Selector;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrustedACIssuers()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValidityModel()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return v0
.end method

.method public blacklist isAdditionalLocationsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return v0
.end method

.method public blacklist isUseDeltasEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return v0
.end method

.method public blacklist setAdditionalLocationsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return-void
.end method

.method public blacklist setAttrCertCheckers(Ljava/util/Set;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/x509/PKIXAttrCertChecker;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/org/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist test-api setCertStores(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setNecessaryACAttributes(Ljava/util/Set;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected blacklist setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 3

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    iget v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/util/Selector;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setProhibitedACAttributes(Ljava/util/Set;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist setStores(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/util/Store;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of list must be of type com.android.internal.org.bouncycastle.util.Store."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public whitelist test-api setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    :goto_0
    return-void
.end method

.method public blacklist setTargetConstraints(Lcom/android/internal/org/bouncycastle/util/Selector;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Selector;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    :goto_0
    return-void
.end method

.method public blacklist setTrustedACIssuers(Ljava/util/Set;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist setUseDeltasEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return-void
.end method

.method public blacklist setValidityModel(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return-void
.end method
