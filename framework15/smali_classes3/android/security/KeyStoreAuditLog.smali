.class public Landroid/security/KeyStoreAuditLog;
.super Ljava/lang/Object;
.source "KeyStoreAuditLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreAuditLog$AuditLogParams;,
        Landroid/security/KeyStoreAuditLog$LogMessage;
    }
.end annotation


# static fields
.field public static final blacklist CLEAR:I = 0x1

.field public static final blacklist DELETE:I = 0x2

.field public static final blacklist EXECUTION_EXCEPTION:I = 0xc9

.field public static final blacklist GENERATE:I = 0x4

.field public static final blacklist IMPORT:I = 0x5

.field public static final blacklist INSERT:I = 0x3

.field private static final blacklist INVALID_DOMAIN:I = -0x1

.field private static final blacklist INVALID_NAMESPACE:I = 0x0

.field public static final blacklist NO_ERROR:I = -0x1

.field public static final blacklist REMOTE_EXCEPTION:I = 0xc8

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreAuditLog"

.field private static blacklist mKeyDescriptorBeforeImportKey:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/system/keystore2/KeyDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconvertCertificatesToPem([Ljava/security/cert/Certificate;)[B
    .locals 0

    invoke-static {p0}, Landroid/security/KeyStoreAuditLog;->convertCertificatesToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetUserId(I)I
    .locals 0

    invoke-static {p0}, Landroid/security/KeyStoreAuditLog;->getUserId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeUserCertAndChain([B[B)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroid/security/KeyStoreAuditLog;->mergeUserCertAndChain([B[B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getDomain()I

    move-result v2

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getNamespace()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getOperationType()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/security/KeyStoreAuditLog;->getKeystoreString(IJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getOperationType()I

    move-result v3

    const-string v4, ""

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getX509Certificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    new-instance v12, Landroid/security/KeyStoreAuditLog$LogMessage;

    if-eqz v1, :cond_1

    const-string v6, "Installing certificate %s succeeded (Keystore=%s, key=%s, Subject=%s, Issuer=%s) %s"

    goto :goto_2

    :cond_1
    const-string v6, "Installing certificate %s failed (Keystore=%s, key=%s, Subject=%s, Issuer=%s) %s"

    :goto_2
    move-object v13, v6

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/KeyStoreAuditLog;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v2

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6, v4}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    goto :goto_6

    :pswitch_1
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->hasCertificates()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getX509Certificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    new-instance v6, Landroid/security/KeyStoreAuditLog$LogMessage;

    if-eqz v1, :cond_3

    const-string v7, "Deleting certificate %s succeeded (Keystore=%s, key=%s, Subject=%s, Issuer=%s)"

    goto :goto_4

    :cond_3
    const-string v7, "Deleting certificate %s failed (Keystore=%s, key=%s, Subject=%s, Issuer=%s)"

    :goto_4
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/KeyStoreAuditLog;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    filled-new-array {v8, v2, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    goto :goto_6

    :pswitch_2
    new-instance v3, Landroid/security/KeyStoreAuditLog$LogMessage;

    if-eqz v1, :cond_5

    const-string v4, "Clearing credentials succeeded. Keystore: %s %s"

    goto :goto_5

    :cond_5
    const-string v4, "Clearing credentials failed. Keystore: %s %s"

    :goto_5
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Landroid/security/KeyStoreAuditLog;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/security/KeyStoreAuditLog$LogMessage;->KEEP:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/security/KeyStoreAuditLog$LogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :cond_6
    :goto_6
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getDomain()I

    move-result v4

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getNamespace()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/security/KeyStoreAuditLog;->getUserIdForDomainOrNamespace(IIJ)I

    move-result v3

    new-instance v4, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, p0, v3}, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;-><init>(ZLandroid/security/KeyStoreAuditLog$AuditLogParams;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist checkCertificateTrustful(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getChainBytes()[B

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZI)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1, v2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser([BI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_3

    return-void

    :cond_3
    new-instance v4, Landroid/security/KeyStoreException;

    const/4 v5, 0x6

    const-string v6, "Certificate not trusted by MDM"

    invoke-direct {v4, v5, v6}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_4
    :goto_0
    return-void
.end method

.method private static blacklist convertCertificatesToPem([Ljava/security/cert/Certificate;)[B
    .locals 5

    const-string v0, "Could not convert certificate."

    const-string v1, "KeyStoreAuditLog"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-object v2
.end method

.method private static blacklist getErrorMessage(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, " Completed with execution exception"

    return-object v0

    :sswitch_1
    const-string v0, " Cannot connect to KeyStore"

    return-object v0

    :sswitch_2
    const-string v0, ""

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getKeyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "USRPKEY_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "private key"

    goto :goto_0

    :cond_0
    const-string v0, "certificate"

    :goto_0
    return-object v0
.end method

.method private static blacklist getKeystoreString(IJI)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    sget-object v1, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    sget-object v1, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    if-eqz v1, :cond_0

    iget p0, v1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget-wide p1, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const-wide/16 v1, 0x66

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    :cond_3
    const-string v0, "VPN and Apps"

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "Wi-Fi"

    :cond_5
    :goto_1
    return-object v0
.end method

.method private static blacklist getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    if-nez p0, :cond_0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string/jumbo v2, "package"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v2, "android.content.pm.IPackageManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "asInterface"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getNameForUid"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot retrieve package name for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyStoreAuditLog"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static blacklist getRequesterInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    const-string v2, "SystemApp"

    goto :goto_0

    :cond_0
    const-string v2, "UserApp"

    :goto_0
    invoke-static {p0, v0}, Landroid/security/KeyStoreAuditLog;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/security/KeyStoreAuditLog;->isCallerAdmin(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|Administrator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|NonAdministrator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " role="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist getUserId(I)I
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getUserIdForDomainOrNamespace(IIJ)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const-wide/16 v0, 0x66

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist isAuditLogEnabledAsUser()Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAuditLogEnabledAsUser(I)Z
    .locals 1

    nop

    invoke-static {p0}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method private static blacklist isCallerAdmin(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "enterprise_policy"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v2, "com.samsung.android.knox.IEnterpriseDeviceManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "asInterface"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "packageHasActiveAdmins"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v0

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Administrator status cannot be defined for requester: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyStoreAuditLog"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic blacklist lambda$auditLogPrivilegedAsUser$0(ZLandroid/security/KeyStoreAuditLog$AuditLogParams;ILandroid/security/KeyStoreAuditLog$LogMessage;)V
    .locals 9

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p1}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Landroid/security/KeyStoreAuditLog$LogMessage;->message:Ljava/lang/String;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v0, p3, Landroid/security/KeyStoreAuditLog$LogMessage;->redactedMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    const/4 v2, 0x1

    move v3, p0

    move v8, p2

    invoke-static/range {v1 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static blacklist mergeUserCertAndChain([B[B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/security/KeyStoreAuditLog;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method public static blacklist notifyCertificateRemovedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V
    .locals 6

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getX509Certificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->getUserId()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    nop

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist setKeyDescriptorBeforeImportKey(JLandroid/system/keystore2/KeyDescriptor;)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Landroid/security/KeyStoreAuditLog;->mKeyDescriptorBeforeImportKey:Landroid/util/Pair;

    return-void
.end method

.method private static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "KeyStoreAuditLog"

    const-string v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static blacklist toCertificates([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "KeyStoreAuditLog"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
