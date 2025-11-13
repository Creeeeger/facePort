.class public Lcom/samsung/android/knox/kpcc/KPCCManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DRX_1280_MSEC:I = 0x3

.field public static final DRX_2560_MSEC:I = 0x4

.field public static final DRX_320_MSEC:I = 0x1

.field public static final DRX_640_MSEC:I = 0x2

.field public static final DRX_DEFAULT:I = 0x0

.field public static final DRX_EMPTY:I = -0x1

.field public static final ERROR_ADMIN_ALREADY_SET:I = -0x3

.field public static final ERROR_FAIL:I = -0x1

.field public static final ERROR_INVALID_VALUE:I = -0x4

.field public static final ERROR_NOT_SUPPORTED:I = -0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KPCCManager"

.field public static final mSync:Ljava/lang/Object;

.field public static volatile sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/kpcc/KPCCManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/knox/kpcc/KPCCManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/kpcc/KPCCManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/kpcc/KPCCManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v2, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public allowRestrictedNetworkCapability(ILjava/lang/String;I)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getDrxValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPackagesAllowedOnRestrictedNetworks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/kpcc/IKPCCManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    if-nez v0, :cond_0

    const-string v0, "kpcc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kpcc/IKPCCManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kpcc/IKPCCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    return-object p0
.end method

.method public getTelephonyDrxValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUnrestrictedNetworkCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public setDrxValue(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "KPCCManager.setDrxValue"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public setPackageOnRestrictedNetworks(ILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "KPCCManager.setPackageOnRestrictedNetworks"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method
