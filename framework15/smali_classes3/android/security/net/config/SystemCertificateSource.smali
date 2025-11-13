.class public final Landroid/security/net/config/SystemCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "SystemCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mUserRemovedCaDir:Ljava/io/File;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 3

    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "cacerts-removed"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/security/net/config/SystemCertificateSource;->mUserRemovedCaDir:Ljava/io/File;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/net/config/SystemCertificateSource-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/security/net/config/SystemCertificateSource;-><init>()V

    return-void
.end method

.method private static blacklist getDirectory()Ljava/io/File;
    .locals 5

    const-string/jumbo v0, "system.certs.enabled"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/etc/security/cacerts"

    const-string v3, "ANDROID_ROOT"

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.android.conscrypt/cacerts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static greylist-max-o getInstance()Landroid/security/net/config/SystemCertificateSource;
    .locals 1

    invoke-static {}, Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;->-$$Nest$sfgetINSTANCE()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCertificates()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist handleTrustStorageUpdate()V
    .locals 0

    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method protected greylist-max-o isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/security/net/config/SystemCertificateSource;->mUserRemovedCaDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
