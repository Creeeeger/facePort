.class public Lcom/samsung/android/knox/EnterpriseKnoxManager;
.super Ljava/lang/Object;
.source "EnterpriseKnoxManager.java"


# static fields
.field private static final KNOX_VPN_V1_ENABLED:Z

.field private static final KNOX_VPN_V2_ENABLED:Z

.field private static TAG:Ljava/lang/String; = "EnterpriseKnoxManager"

.field private static gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mAdvancedRestrictionPolicyCreated:Z

.field private mAuditLogPolicyCreated:Z

.field private mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mCertificatePolicyCreated:Z

.field private mClientCertificateManagerPolicyCreated:Z

.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEnterpriseBillingPolicyCreated:Z

.field private mKnoxContainerMgrMap:Ljava/util/HashMap;
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

.field private mKnoxEnterpriseLicenseManagerCreated:Z

.field private mNetworkAnalyticsCreated:Z

.field private mThreatDefensePolicyCreated:Z

.field private mTimaKeystorePolicyCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    const-string/jumbo v0, "ro.config.knox"

    const-string v1, "0"

    .line 97
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/knox/EnterpriseKnoxManager;->KNOX_VPN_V1_ENABLED:Z

    .line 98
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->KNOX_VPN_V2_ENABLED:Z

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    .line 354
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 357
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    .line 365
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    .line 368
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    .line 370
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    .line 372
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    .line 373
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    .line 219
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    .line 354
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 357
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    .line 365
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    .line 368
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    .line 370
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    .line 372
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    .line 373
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    .line 235
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 236
    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    .line 127
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 131
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    .line 169
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    invoke-direct {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 173
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getCertificatePolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 654
    const-class v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    if-nez v1, :cond_0

    .line 656
    new-instance v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const/4 v1, 0x1

    .line 657
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 659
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    return-object p0

    :catchall_0
    move-exception p0

    .line 659
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 490
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 491
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 490
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
    .locals 4

    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 514
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v2, "persona"

    .line 516
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 515
    invoke-static {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 517
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 519
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v3, :cond_0

    .line 520
    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 522
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_1
    iget v2, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v2, :cond_2

    .line 528
    monitor-exit p0

    return-object v0

    .line 531
    :cond_2
    :try_start_2
    new-instance v2, Lcom/samsung/android/knox/container/KnoxContainerManager;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 533
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 535
    :goto_0
    :try_start_4
    sget-object p2, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at KnoxContainerManager API getKnoxContainerManager "

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v0

    .line 538
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    .locals 0

    .line 308
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    return-object p0
.end method
