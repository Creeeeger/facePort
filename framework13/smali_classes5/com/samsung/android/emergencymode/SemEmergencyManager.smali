.class public Lcom/samsung/android/emergencymode/SemEmergencyManager;
.super Ljava/lang/Object;
.source "SemEmergencyManager.java"


# static fields
.field private static blacklist EMERGENCY_FEATURES_SUPPORTED:Z = false

.field private static final blacklist SERVICE_DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EmergencyManager"

.field private static blacklist isBootCompleted:Z

.field private static blacklist isSystemReady:Z

.field private static blacklist mIsLoadedFeatures:Z

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

.field private static blacklist mSupport_BCM:Z

.field private static blacklist mSupport_DexMode:Z

.field private static blacklist mSupport_EM:Z

.field private static blacklist mSupport_UPSM:Z

.field private static blacklist printBootAnimFlag:Z

.field private static blacklist sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtriggerEmergencyMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZLandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->triggerEmergencyMode(ZIZLandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmSupport_BCM()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmSupport_UPSM()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    .line 71
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;-><init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V

    iput-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 115
    return-void
.end method

.method private blacklist ensureServiceConnected()V
    .locals 4

    .line 154
    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "emergency_service"

    if-nez v1, :cond_1

    .line 159
    :try_start_1
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    const-string v1, "mService is not valid so retieve the service again."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :cond_2
    :goto_0
    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureServiceConnected e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static blacklist getBootState()Z
    .locals 4

    .line 859
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 860
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    .line 863
    :cond_1
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    if-nez v0, :cond_3

    .line 864
    const-string v0, "init.svc.bootanim"

    const-string/jumbo v3, "running"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "stopped"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "EmergencyManager"

    if-eqz v0, :cond_2

    .line 865
    sput-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    .line 866
    const-string v0, "getBootState: init.svc.bootanim is running : false"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 868
    :cond_2
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    if-eqz v0, :cond_3

    .line 869
    const-string v0, "getBootState: init.svc.bootanim is running : true"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    sput-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    .line 874
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "ctx":Landroid/content/Context;
    :try_start_1
    const-string v2, "android"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 96
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EmergencyManager"

    const-string v4, "NameNotFoundException or SecurityException createPackageContext failed"

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    .line 98
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android createPackageContext successful: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    move-object v1, p0

    .line 101
    const-string v2, "EmergencyManager"

    const-string v3, "android createPackageContext null"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 106
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_2
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-exit v0

    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist isBatteryConservingMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 362
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "battery_conserving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static blacklist isBatteryConversingModeSupported()Z
    .locals 1

    .line 409
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 412
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method public static blacklist isEmergencyFeaturesSupported()Z
    .locals 1

    .line 187
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 189
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    return v0
.end method

.method public static whitelist isEmergencyMode(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 320
    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v1, :cond_0

    .line 321
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 323
    :cond_0
    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 324
    return v2

    .line 326
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 327
    .local v3, "token":J
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    move v2, v5

    :cond_2
    move v1, v2

    .line 334
    :goto_0
    goto :goto_1

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntForUser failed e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings Provider is not ready e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 335
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    return v1
.end method

.method public static whitelist isEmergencyModeSupported()Z
    .locals 1

    .line 370
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 373
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    return v0
.end method

.method public static whitelist isGrayScreenSupported()Z
    .locals 6

    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, "bMdnie":Z
    const/4 v1, 0x1

    .line 422
    .local v1, "bAmoled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Temporary Change]support MDNIE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  AMOLED display ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  isGrayScreenSupported ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "EmergencyManager"

    invoke-static {v5, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method public static blacklist isMinimalBatteryUseMode(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 346
    const-string v0, "EmergencyManager"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 347
    .local v1, "token":J
    const/4 v3, 0x0

    .line 349
    .local v3, "result":Z
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "minimal_battery_use"

    invoke-static {v4, v7, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move v3, v5

    .line 354
    :goto_1
    goto :goto_2

    .line 352
    :catch_0
    move-exception v4

    .line 353
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntForUser failed e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 350
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 351
    .local v4, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings Provider is not ready e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 355
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    return v3
.end method

.method public static whitelist isUltraPowerSavingModeSupported()Z
    .locals 1

    .line 381
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 384
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method private static blacklist loadFloatingFeatures()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    .line 176
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    .line 179
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    .line 180
    sput-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    .line 181
    return-void
.end method

.method private blacklist registerReceiver()V
    .locals 6

    .line 291
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "salesCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerReceiver Scode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "DCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

    invoke-virtual {v0, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    return-void
.end method

.method private blacklist setMpsmApplicationEnabled()V
    .locals 13

    .line 118
    const-string/jumbo v0, "setMpsmApplicationEnabled e : "

    const-string v1, "com.sec.android.emergencylauncher"

    const-string v2, "com.sec.android.emergencylauncher"

    .line 119
    .local v2, "mpsmPkg":Ljava/lang/String;
    const-string v3, "com.sec.android.emergencylauncher.LauncherActivity"

    .line 120
    .local v3, "launcherClass":Ljava/lang/String;
    const-string v4, "com.sec.android.emergencylauncher.launcher.service.BadgeNotificationListner"

    .line 121
    .local v4, "badgeClass":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 122
    .local v5, "mPM":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    .line 123
    .local v6, "flag":I
    const-string v7, "EmergencyManager"

    const-string/jumbo v8, "setMpsmApplicationEnabled"

    invoke-static {v7, v8}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    .line 126
    .local v9, "enable":I
    if-eq v9, v8, :cond_0

    .line 127
    invoke-virtual {v5, v1, v6, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 128
    const-string v10, "mpsm package enabled"

    invoke-static {v7, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v9    # "enable":I
    :cond_0
    goto :goto_0

    .line 130
    :catch_0
    move-exception v9

    .line 131
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.emergencylauncher.LauncherActivity"

    invoke-direct {v9, v1, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v9, "launcher_cn":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.emergencylauncher.launcher.service.BadgeNotificationListner"

    invoke-direct {v10, v1, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    .line 137
    .local v1, "badge_cn":Landroid/content/ComponentName;
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v10

    .line 138
    .local v10, "launcherCnState":I
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v11

    .line 139
    .local v11, "badgeCnState":I
    iget-object v12, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 140
    const-string v12, "This is MPSM mode while reboot"

    invoke-static {v7, v12}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eq v10, v8, :cond_1

    .line 142
    invoke-virtual {v5, v9, v6, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 144
    :cond_1
    if-eq v11, v8, :cond_2

    .line 145
    invoke-virtual {v5, v1, v6, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v1    # "badge_cn":Landroid/content/ComponentName;
    .end local v9    # "launcher_cn":Landroid/content/ComponentName;
    .end local v10    # "launcherCnState":I
    .end local v11    # "badgeCnState":I
    :cond_2
    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private declared-synchronized blacklist startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "flag"    # I
    .param p4, "skipdialog"    # Z
    .param p5, "forwardedIntent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 246
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "forwardedIntent"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    .line 250
    const-string v1, "clearBootTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    .end local p0    # "this":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_0
    if-eqz p1, :cond_2

    .line 253
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const-string v1, "flag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "skipdialog"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 258
    :cond_1
    const-string v1, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 263
    :cond_2
    const-string v1, "initForEMState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.emergencymode.service"

    const-string v3, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 245
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "flag":I
    .end local p4    # "skipdialog":Z
    .end local p5    # "forwardedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 269
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "flag":I
    .restart local p4    # "skipdialog":Z
    .restart local p5    # "forwardedIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startService e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 245
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "flag":I
    .end local p4    # "skipdialog":Z
    .end local p5    # "forwardedIntent":Landroid/content/Intent;
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private blacklist stopService()V
    .locals 5

    .line 275
    const-class v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-enter v0

    .line 277
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_0

    .line 278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.emergencymode.service"

    const-string v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 282
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 287
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist triggerEmergencyMode(ZIZLandroid/content/Intent;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "flag"    # I
    .param p3, "skipdialog"    # Z
    .param p4, "forwardedIntent"    # Landroid/content/Intent;

    .line 750
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 752
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    .line 753
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "req trigger, start Service"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private blacklist unregisterReceiver()V
    .locals 2

    .line 310
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    return-void
.end method


# virtual methods
.method public whitelist addAppToLauncher(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 820
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 822
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 824
    return v1

    .line 828
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppToLauncher failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist canSetMode()Z
    .locals 11

    .line 698
    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 699
    return v2

    .line 705
    :cond_0
    const/4 v1, 0x1

    .line 706
    .local v1, "result":Z
    const/4 v3, 0x0

    .line 707
    .local v3, "modifying":Z
    const/4 v4, 0x0

    .line 708
    .local v4, "knoxUser":Z
    const/4 v5, 0x0

    .line 709
    .local v5, "isDeviceProvisioned":Z
    const/4 v6, 0x0

    .line 710
    .local v6, "currentUserId":I
    const-string v7, ""

    .line 713
    .local v7, "reason":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v8

    move v3, v8

    .line 714
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .line 726
    goto :goto_0

    .line 724
    :catch_0
    move-exception v8

    .line 725
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canSetMode Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    .line 731
    .end local v5    # "isDeviceProvisioned":Z
    .local v2, "isDeviceProvisioned":Z
    :cond_1
    if-nez v2, :cond_2

    .line 732
    const/4 v1, 0x0

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "SETUP_WIZARD_UNFINISHED;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 735
    :cond_2
    if-eqz v3, :cond_3

    .line 736
    const/4 v1, 0x0

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "LLM_ENABLING;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 739
    :cond_3
    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    .line 740
    const/4 v1, 0x0

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "NOT_OWNER_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 744
    :cond_4
    if-nez v1, :cond_5

    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not Allowed EmergencyMode due to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_5
    return v1
.end method

.method public blacklist checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 552
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 553
    return v1

    .line 555
    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    return v1

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    return v1

    .line 562
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 564
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    .line 566
    return v1

    .line 570
    :cond_3
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInvalidBroadcast failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist checkInvalidProcess(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 523
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 524
    return v1

    .line 526
    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    return v1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 530
    return v1

    .line 532
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 534
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    .line 536
    return v1

    .line 540
    :cond_3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInvalidProcess failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist checkModeType(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 763
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 767
    return v1

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 770
    return v1

    .line 772
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 774
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    .line 776
    return v1

    .line 780
    :cond_3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkModeType(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModeType failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 764
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;

    .line 497
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 501
    return v1

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 505
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 507
    return v1

    .line 511
    :cond_2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidIntentAction failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;
    .param p3, "allowFlag"    # I

    .line 471
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 475
    return v1

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 479
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 481
    return v1

    .line 485
    :cond_2
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidPackage failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist getEmergencyState()I
    .locals 4

    .line 440
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 441
    return v1

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    return v1

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 448
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 450
    return v1

    .line 454
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->getEmergencyState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyState failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist getModeType()I
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 394
    return v1

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "minimal_battery_use"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 396
    const/4 v0, 0x3

    return v0

    .line 397
    :cond_1
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "battery_conserving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 398
    const/4 v0, 0x2

    return v0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "emergency_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 400
    return v2

    .line 402
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isEmergencyMode()Z
    .locals 1

    .line 430
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist isModifying()Z
    .locals 4

    .line 675
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 676
    return v1

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 680
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 682
    return v1

    .line 686
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isModifying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isModifying failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist isScreenOn()Z
    .locals 4

    .line 605
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 606
    return v1

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    return v1

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 613
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 615
    return v1

    .line 619
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isScreenOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScreenOn failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist isUserPackageBlocked()Z
    .locals 4

    .line 653
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 654
    return v1

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 658
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 659
    return v1

    .line 663
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isUserPackageBlocked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserPackageBlocked failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist makePrivilegedCall(Ljava/lang/String;)I
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 846
    const-string v0, "EmergencyManager"

    :try_start_0
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 847
    .local v1, "callUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 848
    .local v2, "callIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 849
    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v1    # "callUri":Landroid/net/Uri;
    .end local v2    # "callIntent":Landroid/content/Intent;
    nop

    .line 854
    const-string/jumbo v1, "req call, success."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x1

    return v0

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req call, unknown Err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/16 v0, -0x9

    return v0
.end method

.method public blacklist needMobileDataBlock()Z
    .locals 4

    .line 582
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 583
    return v1

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 587
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 589
    return v1

    .line 593
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->needMobileDataBlock()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needMobileDataBlock failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist readyEmergencyMode()V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "EmergencyManager"

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "This is emergency mode."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_0
    const-string v0, "This is normal mode."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->registerReceiver()V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->setMpsmApplicationEnabled()V

    .line 242
    return-void
.end method

.method public whitelist setLocationProviderEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 795
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 796
    return-void

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 800
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 802
    return-void

    .line 806
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setLocationProviderEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocationProviderEnabled failed e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setUserPackageBlocked(ZLandroid/content/Context;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 632
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 637
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 638
    return-void

    .line 642
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setUserPackageBlocked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserPackageBlocked failed e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
