.class public final Lcom/samsung/android/knox/dar/ddar/DualDarManager;
.super Ljava/lang/Object;
.source "DualDarManager.java"


# static fields
.field public static final blacklist AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final blacklist AGENT_PKG:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field private static final blacklist DDAR_MANAGER_SERVICE:Ljava/lang/String; = "DDAR_MANAGER_SERVICE"

.field private static final blacklist PROP_PERSIST_SYS_DUAL_DAR_DO:Ljava/lang/String; = "persist.sys.dualdar.do"

.field private static final blacklist SYSTEM_PROXY_AGENT:Ljava/lang/String; = "SYSTEM_PROXY_AGENT"

.field private static final blacklist TAG:Ljava/lang/String; = "DualDarManager"

.field private static blacklist sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarManager;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getDarManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/dar/IDarManagerService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_0

    nop

    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    return-object v0
.end method

.method private blacklist isKnoxCore(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKnoxCore - UID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1482

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOnDeviceOwner(I)Z
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOnDeviceOwnerEnabled()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "persist.sys.dualdar.do"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    return v0
.end method

.method static synthetic blacklist lambda$isInnerAuthRequired$0(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isInnerAuthRequired(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DualDarManager"

    const-string v2, "failed to check secondary lock req."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$setDualDarInfo$1(IILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setDualDarInfo(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DualDarManager"

    const-string v2, "failed to set dualdar info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private blacklist processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "SYSTEM_PROXY_AGENT"

    const-string v2, "DDAR_MANAGER_SERVICE"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist cancelDataLock(I)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CANCEL_DATA_LOCK"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public blacklist enableOnDeviceOwner(Landroid/os/Bundle;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isKnoxCore(I)Z

    move-result v1

    const-string v2, "DualDarManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "enableOnDeviceOwner - Operation not permitted"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enableOnDeviceOwner - Already enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v1, "ON_DEVICE_OWNER_PROVISIONING"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "dual_dar_response"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableOnDeviceOwner - result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public blacklist ensureDataUnlockedIfRequired()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ENSURE_DATA_UNLOCKED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "dual_dar_response"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureDataUnlockedIfRequired - response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualDarManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getClientPackage(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    move-result-object v0

    const-string v1, "KEY_CLIENT_PACKAGE_NAME"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isInnerAuthRequired(I)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isInnerLayerUnlocked(I)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "IS_INNER_LAYER_UNLOCKED"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "dual_dar_response"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInnerLayerUnlocked - userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualDarManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist scheduleDataLock(I)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SCHEDULE_DATA_LOCK"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public blacklist setDualDarInfo(II)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
