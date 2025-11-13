.class public Lcom/samsung/android/knox/keystore/CertificateProvisioning;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final ERROR_EXTRACT_CERT:I = -0x3

.field public static final ERROR_INSTALL_DEFAULT:I = -0x4

.field public static final ERROR_INSTALL_VPN_AND_APPS:I = -0x5

.field public static final ERROR_INSTALL_WIFI:I = -0x6

.field public static final ERROR_INVALID_PARAMETERS:I = -0x1

.field public static final ERROR_KEYSTORE_KEY_NOT_FOUND:I = 0x7

.field public static final ERROR_KEYSTORE_NONE:I = 0x1

.field public static final ERROR_KEYSTORE_PERMISSION_DENIED:I = 0x6

.field public static final ERROR_KEYSTORE_PROTOCOL:I = 0x5

.field public static final ERROR_KEYSTORE_UNDEFINED_ACTION:I = 0x9

.field public static final ERROR_KEYSTORE_VALUE_CORRUPTED:I = 0x8

.field public static final ERROR_KEYSTORE_WRONG_PASSWORD:I = 0xa

.field public static final ERROR_PARSE_CERT:I = -0x2

.field public static final ERROR_SERVICE_UNAVAILABLE:I = -0x7

.field public static final GLOBAL_KEYSTORE_PARAMS:I = 0x2

.field public static final KEYSTORE_DEFAULT:I = 0x1

.field public static final KEYSTORE_FOR_VPN_AND_APPS:I = 0x4

.field public static final KEYSTORE_FOR_WIFI:I = 0x2

.field public static MAXIMUM_CERTIFICATE_NUMBERS:I = 0x1e

.field public static final NO_ERROR:I = 0x0

.field public static TAG:Ljava/lang/String; = "CertificateProvisioning"

.field public static final TYPE_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final TYPE_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_KEYSTORE_PARAMS:I = 0x5


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static generateToken(II)I
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public addPackagesToCertificateWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.addPackagesToCertificateWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->addPackagesToCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with CertificateProvisioning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteCertificateFromKeystore(Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.deleteCertificateFromKeystore"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with CertificateProvisioning"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCertificatesFromKeystore(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x64

    :try_start_0
    invoke-static {v1, v2}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->generateToken(II)I

    move-result v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v4, p1, v2}, Lcom/samsung/android/knox/ISecurityPolicy;->getCertificatesFromKeystore(Lcom/samsung/android/knox/ContextInfo;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget v5, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    if-eq v4, v5, :cond_0

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with CertificateProvisioning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getCredentialStorageStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPackagesFromCertificateWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISecurityPolicy;->getPackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with CertificateProvisioning"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/ISecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    return-object p0
.end method

.method public getSystemCertificates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISecurityPolicy;->getSystemCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with CertificateProvisioning"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public final installCertificateToKeystore(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.installCertificateToKeystore"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/knox/ISecurityPolicy;->installCertificateToKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with CertificateProvisioning"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x7

    return p0
.end method

.method public installCertificateToKeystore([BLjava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->installCertificateToKeystore(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public installCertificateToKeystore(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->installCertificateToKeystore(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.installCertificateWithType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->installCertificateWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with CertificateProvisioning"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public installCertificatesFromSdCard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.installCertificatesFromSdCard"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISecurityPolicy;->installCertificatesFromSdCard(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with CertificateProvisioning"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removePackagesFromCertificateWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.removePackagesFromCertificateWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->removePackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with CertificateProvisioning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetCredentialStorage()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificateProvisioning.resetCredentialStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISecurityPolicy;->resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with CertificateProvisioning"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "CertificateProvisioning.unlockCredentialStorage"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
