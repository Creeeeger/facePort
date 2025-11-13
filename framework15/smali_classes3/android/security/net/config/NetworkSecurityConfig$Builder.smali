.class public final Landroid/security/net/config/NetworkSecurityConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/NetworkSecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCertificateTransparencyVerificationRequired:Z

.field private blacklist mCertificateTransparencyVerificationRequiredSet:Z

.field private greylist-max-o mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCleartextTrafficPermitted:Z

.field private greylist-max-o mCleartextTrafficPermittedSet:Z

.field private greylist-max-o mHstsEnforced:Z

.field private greylist-max-o mHstsEnforcedSet:Z

.field private greylist-max-o mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

.field private greylist-max-o mPinSet:Landroid/security/net/config/PinSet;


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    return-void
.end method

.method private blacklist getCertificateTransparencyVerificationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificateTransparencyVerificationRequired()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getEffectiveCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getEffectiveCleartextTrafficPermitted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o getEffectiveHstsEnforced()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getEffectivePinSet()Landroid/security/net/config/PinSet;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public greylist-max-o addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public greylist-max-o build()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 13

    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v7

    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v8

    nop

    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificateTransparencyVerificationRequired()Z

    move-result v9

    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v10

    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v11

    new-instance v12, Landroid/security/net/config/NetworkSecurityConfig;

    const/4 v6, 0x0

    move-object v0, v12

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig-IA;)V

    return-object v12
.end method

.method greylist-max-o getCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-object v0
.end method

.method public greylist-max-o hasCertificatesEntryRefs()Z
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist setCertificateTransparencyVerificationRequired(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    return-object p0
.end method

.method public greylist-max-o setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    return-object p0
.end method

.method public greylist-max-o setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    return-object p0
.end method

.method public greylist-max-o setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 3

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Loops are not allowed in Builder parents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-object p0
.end method

.method public greylist-max-o setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    return-object p0
.end method
