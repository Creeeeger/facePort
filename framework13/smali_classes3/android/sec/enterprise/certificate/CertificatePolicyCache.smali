.class public Landroid/sec/enterprise/certificate/CertificatePolicyCache;
.super Ljava/lang/Object;
.source "CertificatePolicyCache.java"


# static fields
.field public static final blacklist ACTION_CERTIFICATE_POLICY_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

.field public static final blacklist EXTRA_CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist TYPE_CERTIFICATE_TRUSTED_UNTRUSTED:Ljava/lang/String; = "CERTIFICATE_TRUSTED_UNTRUSTED"

.field public static final blacklist TYPE_CERTIFICATE_VALIDATION:Ljava/lang/String; = "CERTIFICATE_VALIDATION"

.field private static final blacklist mSync:Ljava/lang/Object;

.field private static blacklist sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;


# instance fields
.field private blacklist mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private blacklist mCertificateValidationEnabled:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mTrustedUntrustedEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadVariables(Landroid/sec/enterprise/certificate/CertificatePolicyCache;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->readVariables(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 58
    const-string v0, "CertificatePolicyCache"

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mSync:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 87
    iput-object p1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;-><init>(Landroid/sec/enterprise/certificate/CertificatePolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new instance of CertificatePolicyCache myUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callingUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->readVariables(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/sec/enterprise/certificate/CertificatePolicyCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    sget-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    .line 81
    :cond_0
    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized blacklist readVariables(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 118
    .local v0, "userId":I
    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readVariables type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mTrustedUntrustedEnabled:Z

    .line 121
    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificateValidationEnabled:Z

    goto :goto_0

    .line 122
    .end local p0    # "this":Landroid/sec/enterprise/certificate/CertificatePolicyCache;
    :cond_0
    const-string v1, "CERTIFICATE_TRUSTED_UNTRUSTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mTrustedUntrustedEnabled:Z

    goto :goto_0

    .line 124
    :cond_1
    const-string v1, "CERTIFICATE_VALIDATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificateValidationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    .end local v0    # "userId":I
    .end local p1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public blacklist isCertificateTrustedUntrustedEnabled()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mTrustedUntrustedEnabled:Z

    return v0
.end method

.method public blacklist isCertificateValidationAtInstallEnabled()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificateValidationEnabled:Z

    return v0
.end method
