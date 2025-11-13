.class public Lcom/samsung/android/knox/kiosk/KioskMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_DISABLE_KIOSK_MODE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

.field public static final ACTION_ENABLE_KIOSK_MODE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

.field public static final ACTION_INFORMATION_STREAM_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.INFORMATION_STREAM_INTERNAL"

.field public static ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REFRESH_HWKEY_CACHE_INTERNAL"

.field public static final ACTION_UNEXPECTED_KIOSK_BEHAVIOR:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UNEXPECTED_KIOSK_BEHAVIOR"

.field public static CONTROL_PANEL_PKGNAME:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field public static final EDGE_FUNCTION_ALL:I = 0x1f

.field public static final EDGE_FUNCTION_APPSEDGE:I = 0x10

.field public static final EDGE_FUNCTION_EDGELIGHTING:I = 0x8

.field public static final EDGE_FUNCTION_INFORMATIONSTREAM:I = 0x4

.field public static final EDGE_FUNCTION_NIGHTCLOCK:I = 0x1

.field public static final EDGE_FUNCTION_PEOPLEEDGE:I = 0x2

.field public static final ERROR_BUSY:I = -0x4

.field public static final ERROR_KIOSK_ALREADY_ENABLED:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PACKAGE_NOT_FOUND:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_BLOCKED_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_STATUS"

.field public static final EXTRA_KIOSK_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = "com.sec.minimode.taskcloser"

.field public static final TAG:Ljava/lang/String; = "KioskMode"

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public allowAirCommandMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowAirCommandMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with Kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowAirViewMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowAirViewMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with Kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowEdgeScreen(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowEdgeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string p2, "Failed talking with Kiosk mode service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowHardwareKeys"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p1, p0, v2, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    array-length p2, p0

    if-ge v3, p2, :cond_1

    aget p2, p0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :goto_2
    const-string p1, "KioskMode"

    const-string p2, "Failed talking with kiosk mode service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public allowMultiWindowMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowMultiWindowMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowTaskManager(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowTaskManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearAllNotifications()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.clearAllNotifications"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v2, "Failed to clear notification bar"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public disableKioskMode()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.disableKioskMode()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const/16 v3, -0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public disableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.disableKioskMode(KioskSetting)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/knox/kiosk/KioskMode$3;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/IKioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskMode$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/KioskMode$4;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Interrupt occured while trying to disable kiosk mode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/SecurityException;

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public enableKioskMode()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "enableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.enableKioskMode()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "com.sec.android.kiosk"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const/16 v3, -0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public enableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.enableKioskMode(KioskSetting)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isEnableKioskModeAllowed()Z

    move-result v0

    const-string v1, "KioskMode"

    if-nez v0, :cond_0

    const-string p0, "call enableKioskMode is not allowed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/knox/kiosk/KioskMode$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/knox/kiosk/KioskMode$1;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;Lcom/samsung/android/knox/kiosk/IKioskMode;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskMode$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/KioskMode$2;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Interrupt occured while trying to enable kiosk mode"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_2

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p0, Ljava/lang/SecurityException;

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public enableKioskMode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "enableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.enableKioskMode(String)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const/16 v2, -0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public getAllBlockedHardwareKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getBlockedEdgeScreen()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with Kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getHardwareKeyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getHardwareKeyList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getKioskHomePackage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/kiosk/IKioskMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    if-nez v0, :cond_0

    const-string v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    return-object p0
.end method

.method public hideNavigationBar(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.hideNavigationBar"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideStatusBar(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.hideStatusBar"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideSystemBar(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.hideSystemBar"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAirCommandModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with Kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAirViewModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with Kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isEnableKioskModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isEnableKioskModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHardwareKeyAllowed(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string p2, "Failed talking with kiosk mode service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isKioskModeEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMultiWindowModeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMultiWindowModeAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isNavigationBarHidden()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isStatusBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSystemBarHidden()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isSystemBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTaskManagerAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KioskMode"

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public wipeRecentTasks()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.wipeRecentTasks"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
