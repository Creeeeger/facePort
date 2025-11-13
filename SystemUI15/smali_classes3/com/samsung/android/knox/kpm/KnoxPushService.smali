.class public Lcom/samsung/android/knox/kpm/KnoxPushService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final KPM_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BIND_KNOX_PUSH_SERVICE"

.field public static final KPM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.pushmanager"

.field public static final KPM_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.pushmanager.controller.RegiControllerFromSdk"

.field public static final SUPPORTED_KNOX_VERSION:I = 0x1b

.field public static final TAG:Ljava/lang/String; = "KnoxPushService"

.field public static mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;


# instance fields
.field public conn:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

.field public mProcessPendingRequest:Z

.field public mTrackOpsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;",
            "Lcom/samsung/android/knox/kpm/RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/kpm/KnoxPushService$1;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->conn:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/kpm/KnoxPushService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kpm/KnoxPushService;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/kpm/KnoxPushService;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "KnoxPushService"

    const-string v1, "context is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/kpm/KnoxPushService;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static isOSVersionSupported()Z
    .locals 4

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "isOSVersionSupported: "

    const-string v3, "KnoxPushService"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "os is not supported firstApiLevel: "

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static sAKmKeytypeExist()Z
    .locals 4

    const-string v0, "KnoxPushService"

    :try_start_0
    const-string/jumbo v1, "ro.security.keystore.keytype"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sakm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sakm exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sAKmKeytypeExist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final declared-synchronized addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z
    .locals 2

    const-string v0, "addToTrackMap:  "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getTrackMapSize()I

    move-result v1

    if-lez v1, :cond_0

    const-string p1, "KnoxPushService"

    const-string/jumbo p2, "previous request is not finished"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "KnoxPushService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getTrackMapSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final attestDeviceSupported()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->sAKKeytypeExist()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isOSVersionSupported()Z

    move-result p0

    return p0
.end method

.method public final bindService()Z
    .locals 5

    const-string v0, "bindService: "

    const-string v1, "bindService: "

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "KnoxPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "KnoxPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.pushmanager"

    const-string v3, "com.samsung.android.knox.pushmanager.controller.RegiControllerFromSdk"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.BIND_KNOX_PUSH_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    const-string v0, "KnoxPushService"

    const-string v1, "bind service:"

    invoke-static {v1, v0, p0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized clearTrackMap()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTrackMapSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handlePendingRequest()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getTrackMapSize()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->clearTrackMap()V

    iput-boolean v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/kpm/RequestInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/kpm/RequestInfo;->getCmd()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/kpm/RequestInfo;->isForce()Z

    move-result v2

    const-string v5, "KnoxPushService"

    const-string/jumbo v6, "process pending request: cmd: "

    const-string v7, ", force: "

    invoke-static {v6, v4, v7, v2, v5}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    if-eq v4, v1, :cond_3

    const/4 v2, 0x2

    if-eq v4, v2, :cond_2

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1

    const-string v2, "KnoxPushService"

    const-string/jumbo v3, "wrong cmd: "

    invoke-static {v4, v3, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isRegistered(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/kpm/KnoxPushService;->unRegisterDevice(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/kpm/KnoxPushService;->registerDevice(ZLcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I

    goto :goto_0

    :cond_4
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final hasPackage(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "KnoxPushService"

    const-string v1, "appInfo: "

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Package not found : "

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isChinaModel()Z
    .locals 2

    const-string/jumbo p0, "ro.csc.countryiso_code"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "countryIsoCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxPushService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CN is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEaSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "KnoxPushService"

    const-string v0, "EA is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isGMSCoreEnabled()Z
    .locals 2

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->hasPackage(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "GMS Core Enabled : "

    const-string v1, "KnoxPushService"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isKnoxVersionSupported()Z
    .locals 2

    sget p0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    const-string v0, "knox version: "

    const-string v1, "KnoxPushService"

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1b

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized isRegistered(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I
    .locals 4

    const-string v0, "isRegistered: "

    monitor-enter p0

    :try_start_0
    const-string v1, "KnoxPushService"

    const-string v2, "isRegistered: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    const-string v1, "KnoxPushService"

    const-string v2, "isRegistered: cb == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/16 p0, -0x9

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KnoxPushService"

    const-string v2, "KPM is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p0, -0x7

    return p0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->bindService()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KnoxPushService"

    const-string v2, "bind request fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p0, -0x2

    return p0

    :cond_2
    :try_start_4
    new-instance v1, Lcom/samsung/android/knox/kpm/RequestInfo;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/kpm/RequestInfo;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    const/4 p0, -0x4

    return p0

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kpm/IKnoxPushService;->isRegistered(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V

    :cond_4
    const-string v1, "KnoxPushService"

    const-string v2, "isRegistered requested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_6
    const-string v2, "KnoxPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isSupported()Z
    .locals 2

    const-string v0, "KnoxPushService"

    const-string v1, "isSupported: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isKnoxVersionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isEaSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->sAKmKeytypeExist()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->attestDeviceSupported()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isGMSCoreEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized registerDevice(ZLcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I
    .locals 4

    const-string/jumbo v0, "registerDevice: "

    const-string/jumbo v1, "registerDevice: "

    monitor-enter p0

    :try_start_0
    const-string v2, "KnoxPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    :try_start_1
    const-string p1, "KnoxPushService"

    const-string/jumbo v1, "registerDevice: cb == null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/16 p0, -0x9

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "KnoxPushService"

    const-string v1, "KPM is not supported"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p0, -0x7

    return p0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->bindService()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "KnoxPushService"

    const-string v1, "bind request fail"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p0, -0x2

    return p0

    :cond_2
    :try_start_4
    new-instance v1, Lcom/samsung/android/knox/kpm/RequestInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/knox/kpm/RequestInfo;-><init>(IZ)V

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    const/4 p0, -0x4

    return p0

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/kpm/IKnoxPushService;->registerDevice(ZLcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V

    :cond_4
    const-string p1, "KnoxPushService"

    const-string/jumbo v1, "registerDevice requested"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_6
    const-string v1, "KnoxPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    .locals 2

    const-string/jumbo v0, "removeFromTrackMap: size: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "KnoxPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pending: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    if-nez p1, :cond_0

    const-string p1, "KnoxPushService"

    const-string v0, "Map is empty, call unBindService: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    iget-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final sAKKeytypeExist()Z
    .locals 3

    const-string p0, "KnoxPushService"

    :try_start_0
    const-string/jumbo v0, "ro.security.keystore.keytype"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "sak keytype not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sAKKeytypeExist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized unRegisterDevice(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I
    .locals 4

    const-string/jumbo v0, "unRegisterDevice: "

    monitor-enter p0

    :try_start_0
    const-string v1, "KnoxPushService"

    const-string/jumbo v2, "unRegisterDevice: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    const-string v1, "KnoxPushService"

    const-string/jumbo v2, "unRegisterDevice: cb == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/16 p0, -0x9

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KnoxPushService"

    const-string v2, "KPM is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p0, -0x7

    return p0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->bindService()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KnoxPushService"

    const-string v2, "bind request fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p0, -0x2

    return p0

    :cond_2
    :try_start_4
    new-instance v1, Lcom/samsung/android/knox/kpm/RequestInfo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/kpm/RequestInfo;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    const/4 p0, -0x4

    return p0

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kpm/IKnoxPushService;->unRegisterDevice(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V

    :cond_4
    const-string v1, "KnoxPushService"

    const-string/jumbo v2, "unRegisterDevice requested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_6
    const-string v2, "KnoxPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_1
    monitor-exit p0

    throw p1
.end method
