.class public Lcom/samsung/android/knoxguard/KnoxGuardManager;
.super Ljava/lang/Object;
.source "KnoxGuardManager.java"


# static fields
.field private static final blacklist KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;


# instance fields
.field private blacklist mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 15
    const-string v0, "KnoxGuardManager"

    sput-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/KnoxGuardManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;

    .line 27
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "knoxguard_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v0
.end method


# virtual methods
.method public blacklist addPackagesToClearCacheBlockList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 122
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->addPackagesToClearCacheBlockList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addPackagesToForceStopBlockList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 111
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->addPackagesToForceStopBlockList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowFirmwareRecovery(Z)Z
    .locals 3
    .param p1, "allow"    # Z

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowFirmwareRecovery(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowOTAUpgrade(Z)Z
    .locals 3
    .param p1, "allow"    # Z

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowOTAUpgrade(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowSafeMode(Z)Z
    .locals 3
    .param p1, "allow"    # Z

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowSafeMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bindToLockScreen()V
    .locals 3

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->bindToLockScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist callKGsv()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->callKGsv()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist generateHotpDHRequest()Ljava/lang/String;
    .locals 3

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->generateHotpDHRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClientData()Ljava/lang/String;
    .locals 3

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getClientData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHDMVersion()Ljava/lang/String;
    .locals 4

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getHDMVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with Knox Guard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    return-object v1

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method public blacklist getHdmStatus()Ljava/lang/String;
    .locals 3

    .line 553
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getHdmStatus()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getHotpChallenge()Ljava/lang/String;
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getHotpChallenge()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKGID()Ljava/lang/String;
    .locals 3

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKGPolicy()Ljava/lang/String;
    .locals 3

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGPolicy()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKGServiceVersion()I
    .locals 3

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGServiceVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 287
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLockAction()Ljava/lang/String;
    .locals 3

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getLockAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serverMsg"    # Ljava/lang/String;
    .param p2, "serverToken"    # Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with Knox Guard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    return-object v1

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method public blacklist getPBAUniqueNumber()Ljava/lang/String;
    .locals 4

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with Knox Guard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    return-object v1

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method public blacklist getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object p2
.end method

.method public blacklist getTAError()I
    .locals 3

    .line 586
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getTAError()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getTAInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "infoFlag"    # I

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getTAInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTAState()I
    .locals 1

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getTAStateSetError(Z)I

    move-result v0

    return v0
.end method

.method public blacklist getTAStateSetError(Z)I
    .locals 3
    .param p1, "setError"    # Z

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getTAStateSetError(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public blacklist isSkipSupportContainerSupported()Z
    .locals 3

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->isSkipSupportContainerSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVpnExceptionRequired()Z
    .locals 3

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->isVpnExceptionRequired()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 12
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "skipPin"    # Z
    .param p7, "skipSupport"    # Z
    .param p8, "bundle"    # Landroid/os/Bundle;

    .line 464
    const/16 v1, -0x3e8

    .line 465
    .local v1, "res":I
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    return v1

    .line 468
    :cond_0
    move-object v2, p0

    :try_start_0
    iget-object v3, v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 471
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method public blacklist provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "enrollCert"    # Ljava/lang/String;
    .param p2, "hotpCert"    # Ljava/lang/String;
    .param p3, "policyCert"    # Ljava/lang/String;
    .param p4, "blCert"    # Ljava/lang/String;

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "preFix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->registerIntent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resetRPMB()I
    .locals 3

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->resetRPMB()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist resetRPMB2(Ljava/lang/String;)I
    .locals 3
    .param p1, "optional"    # Ljava/lang/String;

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->resetRPMB2(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userhandle"    # Landroid/os/UserHandle;

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setAdminRemovable(Z)Z
    .locals 3
    .param p1, "removable"    # Z

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setAdminRemovable(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAirplaneMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setApplicationUninstallationDisabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCheckingState()I
    .locals 3

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setCheckingState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setClientData(Ljava/lang/String;)I
    .locals 3
    .param p1, "clientData"    # Ljava/lang/String;

    .line 498
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setClientData(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setKnoxGuardExemptRule(Z)V
    .locals 3
    .param p1, "add"    # Z

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setKnoxGuardExemptRule(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 267
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "No Knox Guard Service found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_1
    return-void
.end method

.method public blacklist setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "emergencycallbutton"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "failcount"    # I
    .param p9, "timeout"    # J
    .param p11, "blockcount"    # I
    .param p12, "skippin"    # Z
    .param p13, "bundle"    # Landroid/os/Bundle;

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    move-object/from16 v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    move-object/from16 v1, p0

    .line 201
    :goto_0
    return-void
.end method

.method public blacklist setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .locals 17
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "emergencycallbutton"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "failcount"    # I
    .param p9, "timeout"    # J
    .param p11, "blockcount"    # I
    .param p12, "skippin"    # Z
    .param p13, "bundle"    # Landroid/os/Bundle;
    .param p14, "skipSupportContainer"    # Z

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    move-object/from16 v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-interface/range {v2 .. v16}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    move-object/from16 v1, p0

    .line 211
    :goto_0
    return-void
.end method

.method public blacklist setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userhandle"    # Landroid/os/UserHandle;

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist shouldBlockCustomRom()Z
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->shouldBlockCustomRom()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showInstallmentStatus()Z
    .locals 3

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->showInstallmentStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unRegisterIntent()V
    .locals 3

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->unRegisterIntent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist unlockScreen()I
    .locals 4

    .line 452
    const/16 v0, -0x3e8

    .line 453
    .local v0, "res":I
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 454
    return v0

    .line 456
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->unlockScreen()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist verifyCompleteToken(Ljava/lang/String;)I
    .locals 4
    .param p1, "serverResponse"    # Ljava/lang/String;

    .line 396
    const/16 v0, -0x3e8

    .line 397
    .local v0, "res":I
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 398
    return v0

    .line 400
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyCompleteToken(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 403
    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "hub"    # Ljava/lang/String;
    .param p2, "sigature"    # Ljava/lang/String;
    .param p3, "challenge"    # Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with KnoxGuard KGTA processcommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 351
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "failed talking with KnoxGuard KGTA, service not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public blacklist verifyHOTPPin(Ljava/lang/String;)I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyHOTPPin(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 364
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "failed talking with KnoxGuard KGTA, service not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist verifyHOTPsecret(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyHOTPsecret(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with KnoxGuard KGTA processcommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 338
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "failed talking with KnoxGuard KGTA, service not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public blacklist verifyKgRot()Ljava/lang/String;
    .locals 3

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyKgRot()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "sigature"    # Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "regInfo"    # Ljava/lang/String;
    .param p2, "regInfoSig"    # Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard KGTA processCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
