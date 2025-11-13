.class public Lcom/samsung/android/game/SemGameManager;
.super Ljava/lang/Object;
.source "SemGameManager.java"


# static fields
.field private static final blacklist FPS_PARAM_MAX:I = 0x3c

.field private static final blacklist FPS_PARAM_MIN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemGameManager"

.field private static final blacklist TRANSACT_CODE_GET_DFS:I = 0x464

.field public static final blacklist TUNE_PERFORMANCE_MODE_HIGH_PERFORMANCE:I = 0x1

.field public static final blacklist TUNE_PERFORMANCE_MODE_NORMAL_PERFORMANCE:I = 0x0

.field public static final blacklist TUNE_PERFORMANCE_MODE_SAVE_POWER:I = -0x1


# instance fields
.field private blacklist mService:Lcom/samsung/android/game/IGameManagerService;


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v1, :cond_0

    .line 63
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v1, :cond_1

    .line 65
    const-string v1, "SemGameManager"

    const-string v2, "SemGameManager(), init mService failed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    .line 55
    return-void
.end method

.method public static blacklist getGMSBinder()Landroid/os/IBinder;
    .locals 3

    .line 437
    const-string v0, "gamemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 438
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const-string v1, "SemGameManager"

    const-string v2, "getGMSBinder(), failed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_0
    return-object v0
.end method

.method private blacklist getService()Lcom/samsung/android/game/IGameManagerService;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    return-object v0
.end method

.method public static whitelist isAvailable()Z
    .locals 3

    .line 81
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    .local v0, "available":Z
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "SemGameManager"

    const-string v2, "isAvailable(), not available"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return v0
.end method

.method public static whitelist isGamePackage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .local v0, "b":Landroid/os/IBinder;
    const-string v1, "gamemanager system service is not available"

    if-eqz v0, :cond_2

    .line 98
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    .line 99
    .local v2, "svc":Lcom/samsung/android/game/IGameManagerService;
    if-eqz v2, :cond_1

    .line 102
    const/4 v1, -0x1

    .line 104
    .local v1, "tempRet":I
    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 107
    nop

    .line 108
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 109
    .local v3, "ret":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGamePackage(), pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemGameManager"

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v3

    .line 105
    .end local v3    # "ret":Z
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "failed to call gamemanager system service"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    .end local v1    # "tempRet":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v2    # "svc":Lcom/samsung/android/game/IGameManagerService;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist getForegroundApp()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->getForegroundApp()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "SemGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getForegroundApp(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-object v0

    .line 149
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getGameList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->getGameList()Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SemGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGameList(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-object v0

    .line 168
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTargetFrameRate()I
    .locals 8

    .line 291
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 292
    .local v0, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v0, :cond_4

    .line 295
    const/4 v1, -0x1

    .line 296
    .local v1, "curDfsValue":I
    const/4 v2, 0x0

    .line 297
    .local v2, "transactRet":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 298
    .local v3, "data":Landroid/os/Parcel;
    const-string v4, "SemGameManager"

    if-eqz v3, :cond_2

    .line 299
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 301
    .local v5, "reply":Landroid/os/Parcel;
    if-eqz v5, :cond_1

    .line 303
    const/16 v6, 0x464

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v6, v3, v5, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    move v2, v6

    .line 304
    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v1, v6

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTargetFrameRate(), transactGetDFS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    const-string v6, "getTargetFrameRate(), transactRet: false"

    invoke-static {v4, v6}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v6

    .line 313
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v7, "getTargetFrameRate(), SecurityException: Need system privilege"

    invoke-static {v4, v7}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v6    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 311
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v7, "getTargetFrameRate(), RemoteException!"

    invoke-static {v4, v7}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v6    # "ex":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 315
    :goto_1
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 317
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 319
    .end local v5    # "reply":Landroid/os/Parcel;
    :cond_2
    if-eqz v2, :cond_3

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTargetFrameRate(), ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return v1

    .line 320
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "failed to transact SurfaceFlinger"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v1    # "curDfsValue":I
    .end local v2    # "transactRet":Z
    .end local v3    # "data":Landroid/os/Parcel;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to get SurfaceFlinger"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getTopActivityName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "SemGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivityName(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-object v0

    .line 266
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "SemGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersion(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-object v0

    .line 227
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist init(ILjava/util/Map;)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "pkgMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/IGameManagerService;->initGameManager(ILjava/util/Map;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isDynamicSurfaceScalingSupported()Z
    .locals 3

    .line 424
    const/4 v0, 0x1

    .line 425
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDynamicSurfaceScalingSupported(), ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemGameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return v0
.end method

.method public whitelist isForegroundGame()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_1

    .line 123
    const/4 v1, -0x1

    .line 125
    .local v1, "tempRet":I
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "tempRet":I
    .local v0, "tempRet":I
    nop

    .line 129
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 130
    .local v1, "ret":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundGame(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemGameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return v1

    .line 126
    .end local v0    # "tempRet":I
    .local v1, "tempRet":I
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to call gamemanager system service"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "tempRet":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/IGameManagerService;->requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "SemGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestWithJson(), command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jsonParam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-object v0

    .line 245
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPackageConfigurations(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 370
    .local p1, "packageConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->setPackageConfigurations(Ljava/util/List;)Z

    move-result v0

    .line 375
    .local v0, "ret":Z
    const-string v1, "SemGameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPackageConfigurations(), packageConfigurations="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return v0

    .line 378
    .end local v0    # "ret":Z
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPerformanceMode(ILjava/lang/String;)Z
    .locals 4
    .param p1, "tunePerformanceMode"    # I
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 396
    const-string v0, "SemGameManager"

    if-eqz p2, :cond_2

    const/4 v1, -0x1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_1

    .line 407
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/game/IGameManagerService;->setPerformanceMode(ILjava/lang/String;)Z

    move-result v1

    .line 408
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPerformanceMode(), tunePerformanceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    return v1

    .line 412
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPerformanceMode(), unexpected param. tunePerformanceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTargetFrameRate(I)Z
    .locals 5
    .param p1, "fps"    # I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_3

    .line 339
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 340
    .local v0, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 344
    const/4 v1, 0x1

    const-string v2, "SemGameManager"

    if-ge p1, v1, :cond_0

    .line 345
    const-string/jumbo v1, "setTargetFrameRate(), given fps is not allowed value. do nothing."

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    return v1

    .line 347
    :cond_0
    const/16 v1, 0x3c

    if-le p1, v1, :cond_1

    .line 348
    const-string/jumbo v1, "setTargetFrameRate(), use max value 60"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/16 p1, 0x3c

    .line 353
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/game/IGameManagerService;->setTargetFrameRate(Landroid/os/IBinder;I)Z

    move-result v1

    .line 354
    .local v1, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTargetFrameRate(), fps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return v1

    .line 356
    .end local v1    # "ret":Z
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to call gamemanager system service"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to get SurfaceFlinger"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    .end local v0    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist syncGameList(Ljava/util/Map;)V
    .locals 3
    .param p1, "pkgMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/samsung/android/game/SemGameManager;->mService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->syncGameList(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    nop

    .line 211
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to call gamemanager system service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gamemanager system service is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
