.class public Lcom/samsung/android/knox/EnterpriseKnoxManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    }
.end annotation


# static fields
.field public static final DEVICE_KNOXIFIED:I = 0x1

.field public static final DEVICE_NOT_KNOXIFIED:I = 0x0

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field public static TAG:Ljava/lang/String; = "EnterpriseKnoxManager"

.field public static gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

.field public static mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

.field public mAdvancedRestrictionPolicyCreated:Z

.field public mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

.field public mAuditLogPolicyCreated:Z

.field public mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field public mCertificatePolicyCreated:Z

.field public mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

.field public mClientCertificateManagerPolicyCreated:Z

.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

.field public mEnterpriseBillingPolicyCreated:Z

.field public mKnoxContainerMgrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            ">;>;"
        }
    .end annotation
.end field

.field public mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

.field public mKnoxEnterpriseLicenseManagerCreated:Z

.field public mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field public mNetworkAnalyticsCreated:Z

.field public mNwFilterMgr:Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

.field public mNwFilterMgrPolicyCreated:Z

.field public mThreatDefensePolicy:Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

.field public mThreatDefensePolicyCreated:Z

.field public mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

.field public mTimaKeystorePolicyCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-object v0
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDeviceKnoxifiedState()I
    .locals 2

    const-string/jumbo v0, "ro.config.knoxtakeover"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getParentInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/AccessController;->enforceWpcod()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_2

    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAdvancedRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getAdvancedRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 3

    const-class v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAuditLogPolicy()Lcom/samsung/android/knox/log/AuditLog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAuditLogPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object p0

    return-object p0
.end method

.method public getAuditLogPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v0, Lcom/samsung/android/knox/log/AuditLog;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/log/AuditLog;->createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getCertificatePolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getClientCertificateManagerPolicy()Lcom/samsung/android/knox/keystore/ClientCertificateManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getClientCertificateManagerPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEnhancedAttestationPolicy()Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getEnhancedAttestationPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getEnterpriseBillingPolicy()Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
    .locals 4

    const-string v0, "Added Client : "

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "getEnterpriseBillingPolicy"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    const-string v2, "EnterpriseBillingPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getEnterpriseCertEnrollPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getEnterpriseCertEnrollPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getGenericVpnPolicy(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getGenericVpnPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception at getGenericVpnPolicy"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getKnoxContainerManager(I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/knox/container/KnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_2
    new-instance v1, Lcom/samsung/android/knox/container/KnoxContainerManager;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_4
    sget-object p2, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at KnoxContainerManager API getKnoxContainerManager "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    :goto_1
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnoxContainerManager(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKnoxEnterpriseLicenseManager()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxEnterpriseLicenseManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxEnterpriseLicenseManager(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxEnterpriseLicenseManager(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxEnterpriseLicenseManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getKnoxPushService()Lcom/samsung/android/knox/kpm/KnoxPushService;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxPushService"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kpm/KnoxPushService;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAnalytics()Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getNetworkAnalytics"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getNetworkAnalytics(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAnalytics(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 3

    const-string v0, "Added Client : "

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "getNetworkAnalytics"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v2, p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    const-string p1, "NetworkAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getNetworkFilterManagerPolicy()Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getNetworkFilterManagerPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgr:Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgr:Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getThreatDefensePolicy()Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getThreatDefensePolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicy:Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicy:Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getTimaKeystorePolicy()Lcom/samsung/android/knox/keystore/TimaKeystore;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getTimaKeystorePolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/knox/keystore/TimaKeystore;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/keystore/TimaKeystore;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/TimaKeystore;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    .locals 0

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    return-object p0
.end method
