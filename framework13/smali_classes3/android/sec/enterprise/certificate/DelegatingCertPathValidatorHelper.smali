.class public Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;
.super Ljava/lang/Object;
.source "DelegatingCertPathValidatorHelper.java"


# static fields
.field public static final blacklist ALERT:I = 0x1

.field public static final blacklist AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final blacklist AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final blacklist AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final blacklist AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final blacklist AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final blacklist CRITICAL:I = 0x2

.field private static blacklist DEBUG:Z = false

.field public static final blacklist ERROR:I = 0x3

.field public static final blacklist NOTICE:I = 0x5

.field private static final blacklist PEM_CERT_BEGIN:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\n"

.field private static final blacklist PEM_CERT_END:Ljava/lang/String; = "\n-----END CERTIFICATE-----\n"

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist WARNING:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    const-string v0, "DelegatingCertPathValidatorHelper"

    sput-object v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isChainTrustedByMdm(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 102
    .local p0, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x1

    .line 104
    .local v0, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    .line 105
    .local v1, "cp":Landroid/sec/enterprise/certificate/CertificatePolicy;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 107
    .local v2, "userId":I
    const/4 v3, 0x0

    .line 108
    .local v3, "isTrustedUntrustedEnabled":Z
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v4

    move v3, v4

    .line 112
    :cond_0
    if-eqz v3, :cond_2

    .line 113
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v4, "certByteStream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 115
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    const-string v7, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    const-string v7, "\n-----END CERTIFICATE-----\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 118
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v6, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 124
    .end local v1    # "cp":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .end local v2    # "userId":I
    .end local v3    # "isTrustedUntrustedEnabled":Z
    .end local v4    # "certByteStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    goto :goto_1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call isCaCertificateTrustedAsUser() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v1, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChainTrustedByMdm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    return v0
.end method

.method public static blacklist isOcspCheckEnabled()Z
    .locals 2

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "ret":Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    .line 58
    .local v1, "cp":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled()Z

    move-result v0

    .line 61
    :cond_0
    return v0
.end method

.method public static blacklist isRevocationCheckEnabled()Z
    .locals 5

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "ret":Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    .line 46
    .local v1, "cp":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled()Z

    move-result v0

    .line 49
    :cond_0
    sget-boolean v2, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRevocationCheckEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    return v0
.end method

.method public static blacklist setRevocationChecker(Ljava/security/cert/PKIXRevocationChecker;Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p0, "revChecker"    # Ljava/security/cert/PKIXRevocationChecker;
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;

    .line 65
    sget-boolean v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRevocationChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-static {}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->isRevocationCheckEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    .line 81
    .local v2, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v3, v2, Ljava/security/cert/PKIXRevocationChecker;

    if-nez v3, :cond_2

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_2
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1, v0}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 88
    invoke-static {}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->isOcspCheckEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0, v1}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    .line 95
    .end local v1    # "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    :cond_4
    invoke-virtual {p1, p0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 96
    return-void
.end method
