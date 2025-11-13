.class public Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_PACKAGE_RULES_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

.field public static final ERROR_CAST_CLASS:I = -0x68

.field public static final ERROR_INIT_JSON_OBJECT:I = -0x6b

.field public static final ERROR_INVALID_ARGUMENT:I = -0x6a

.field public static final ERROR_INVALID_PKG:I = -0x65

.field public static final ERROR_INVALID_PROC:I = -0x69

.field public static final ERROR_NO_PACKAGE_RULES:I = -0x66

.field public static final ERROR_POLICY_VERSION:I = -0x64

.field public static final ERROR_RESTRICT_CHAR:I = -0x67

.field public static final ERROR_SIGNATURE:I = -0x6c

.field public static final KNOX_MOBILE_THREAT_DEFENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final TAG:Ljava/lang/String; = "ThreatDefensePolicy"

.field public static final mSynchronized:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mSynchronized:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    iput-object p1, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getProcessId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    :goto_1
    const-string p1, "ThreatDefensePolicy"

    const-string v0, "Failed to call getProcessId()"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "threat_defense_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public hasPackageRules()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ThreatDefensePolicy"

    const-string v1, "Failed to call hasPackageRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public procReader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ThreatDefensePolicy"

    const-string v0, "Failed to call procReader()"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public processProcReader(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ThreatDefensePolicy"

    const-string p2, "Failed to call processProcReader()"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setPackageRules(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ThreatDefensePolicy"

    const-string v0, "Failed to call setPackageRules()"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
