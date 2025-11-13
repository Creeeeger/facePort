.class public final Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "DelegatingCertPathValidator.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DelegatingCertPathValidator"


# instance fields
.field private final blacklist mDelegate:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 27
    :try_start_0
    const-string v0, "PKIX"

    const-string v1, "CertPathProvider"

    invoke-static {v0, v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->mDelegate:Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    nop

    .line 33
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 28
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 29
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->mDelegate:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 11
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 45
    sget-boolean v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DelegatingCertPathValidator"

    const-string v1, "engineValidate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    instance-of v0, p2, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->isChainTrustedByMdm(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "ret":Ljava/security/cert/CertPathValidatorResult;
    invoke-virtual {p0}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXRevocationChecker;

    .line 58
    .local v1, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v2

    .line 61
    .local v2, "opt":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    move-object v3, p2

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-static {v1, v3}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->setRevocationChecker(Ljava/security/cert/PKIXRevocationChecker;Ljava/security/cert/PKIXParameters;)V

    .line 63
    :try_start_0
    iget-object v3, p0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->mDelegate:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v3, p1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 73
    invoke-virtual {v1, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    .line 74
    nop

    .line 76
    return-object v0

    .line 73
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CertPathValidator failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, "CertPathValidator"

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateRevokedException;

    if-eqz v4, :cond_1

    .line 67
    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "conscrypt"

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 67
    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    nop

    .end local v0    # "ret":Ljava/security/cert/CertPathValidatorResult;
    .end local v1    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    .end local v2    # "opt":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    .end local p0    # "this":Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;
    .end local p1    # "cp":Ljava/security/cert/CertPath;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v0    # "ret":Ljava/security/cert/CertPathValidatorResult;
    .restart local v1    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    .restart local v2    # "opt":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    .restart local p0    # "this":Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;
    .restart local p1    # "cp":Ljava/security/cert/CertPath;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    .line 74
    throw v3

    .line 52
    .end local v0    # "ret":Ljava/security/cert/CertPathValidatorResult;
    .end local v1    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    .end local v2    # "opt":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "A certificate from chain is not trusted by MDM policy"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate params, must be an instance of PKIXParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
