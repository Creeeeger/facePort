.class public Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "EnterpriseLicenseManager.java"


# static fields
.field private static gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

.field private static lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "enterprise_license_policy"

    .line 350
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 351
    iput-object p2, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContext:Landroid/content/Context;

    .line 352
    iput-object p1, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .locals 3

    .line 370
    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 373
    new-instance v2, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    .line 375
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .locals 1

    .line 356
    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    if-nez v0, :cond_0

    const-string v0, "enterprise_license_policy"

    .line 358
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 360
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    return-object v0
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 849
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 850
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 854
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 855
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p0, p1, v0, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    .line 860
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 874
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 878
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 879
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 884
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 974
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 975
    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    .line 978
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
