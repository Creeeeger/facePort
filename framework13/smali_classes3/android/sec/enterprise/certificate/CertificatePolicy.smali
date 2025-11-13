.class public Landroid/sec/enterprise/certificate/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final blacklist BROWSER_MODULE:Ljava/lang/String; = "browser_module"

.field public static final blacklist CERTIFICATE_VALIDATED_SUCCESSFULLY:I = -0x1

.field public static final blacklist CERT_ERROR_REVOKED:I = -0xce

.field public static final blacklist CERT_ERROR_UNABLE_TO_CHECK_REVOCATION:I = -0xcd

.field public static final blacklist MSG_ADDITIONAL_CHECKER:Ljava/lang/String; = "Additional certificate path checker failed."

.field public static final blacklist MSG_CRL_DIST_COULD_NOT_BE_READ:Ljava/lang/String; = "CRL distribution point extension could not be read"

.field public static final blacklist MSG_CRL_NOT_VALID:Ljava/lang/String; = "No valid CRL found."

.field public static final blacklist MSG_DIST_POINT_COULD_NOT_BE_READ:Ljava/lang/String; = "Distribution points could not be read."

.field public static final blacklist MSG_EXPIRED_CERT:Ljava/lang/String; = ", expiration time"

.field public static final blacklist MSG_IS_REVOKED_CERT:Ljava/lang/String; = "is revoked"

.field public static final blacklist MSG_NOT_YET_VALID_CERT:Ljava/lang/String; = ", validation time"

.field public static final blacklist MSG_NO_ADDITIONAL_CRL_DECODED:Ljava/lang/String; = "No additional CRL locations could be decoded from CRL distribution point extension."

.field public static final blacklist MSG_REVOKED_CERT:Ljava/lang/String; = "Certificate revocation after"

.field public static final blacklist MSG_UNABLE_CHECK_OCSP_STATUS:Ljava/lang/String; = "OCSP check failed!"

.field public static final blacklist MSG_UNABLE_CHECK_REVOCATION_STATUS:Ljava/lang/String; = "Certificate status could not be determined."

.field public static final blacklist MSG_UNABLE_GET_CRL:Ljava/lang/String; = "Unable to get CRL for certificate"

.field public static final blacklist PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field public static final blacklist SBROWSER_VERIFY_NO_TRUSTED_ROOT:I = 0x2

.field public static final blacklist SBROWSER_VERIFY_REVOKED:I = 0x1

.field public static final blacklist SBROWSER_VERIFY_UNABLE_TO_CHECK_REVOCATION:I = 0x0

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist WIFI_MODULE:Ljava/lang/String; = "wifi_module"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-string v0, "CertificatePolicy"

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isCaCertificateTrustedAsUser([BZI)Z
    .locals 1
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isCaCertificateTrustedAsUser([BZZI)Z
    .locals 2
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "checkTrusted"    # Z
    .param p4, "userId"    # I

    .line 143
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 144
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 149
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 150
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isCertificateTrustedUntrustedEnabledAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 155
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 156
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 161
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 162
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCertificateValidationAtInstallEnabledAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 220
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 221
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 226
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 227
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOcspCheckEnabled()Z
    .locals 2

    .line 182
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 183
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isOcspCheckEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 188
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 189
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRevocationCheckEnabled()Z
    .locals 2

    .line 170
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 171
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isRevocationCheckEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 176
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 177
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .line 127
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 128
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 134
    :goto_0
    return-void
.end method

.method public blacklist notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 194
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 195
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    :goto_0
    return-void
.end method

.method public blacklist validateCertificateAtInstallAsUser([BI)I
    .locals 2
    .param p1, "certBytes"    # [B
    .param p2, "userId"    # I

    .line 207
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 208
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->validateCertificateAtInstallAsUser([BI)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 213
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 214
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
