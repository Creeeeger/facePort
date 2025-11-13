.class public Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "SemEnterpriseDeviceManager.java"


# static fields
.field private static greylist TAG:Ljava/lang/String;

.field private static greylist mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 34
    const-string v0, "SemEnterpriseDeviceManager"

    sput-object v0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    return-void
.end method

.method private constructor greylist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    .line 51
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 78
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_1

    .line 79
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 80
    .local v1, "pn":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 84
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v1    # "pn":Ljava/lang/String;
    :cond_1
    nop

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
