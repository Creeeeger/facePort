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

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;-><init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V

    iput-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    return-void
.end method

.method private blacklist ensureServiceConnected()V
    .locals 4

    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "emergency_service"

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mService is not valid so retieve the service again."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

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

    :goto_1
    return-void
.end method

.method private static blacklist getBootState()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "sys.boot_completed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    :cond_1
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    if-nez v0, :cond_3

    const-string v0, "init.svc.bootanim"

    const-string v3, "running"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "stopped"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "EmergencyManager"

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    const-string v0, "getBootState: init.svc.bootanim is running : false"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    if-eqz v0, :cond_3

    const-string v0, "getBootState: init.svc.bootanim is running : true"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "android"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "EmergencyManager"

    const-string v4, "NameNotFoundException or SecurityException createPackageContext failed"

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_1

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

    :cond_1
    move-object v1, p0

    const-string v2, "EmergencyManager"

    const-string v3, "android createPackageContext null"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_2
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist isBatteryConservingMode(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "battery_conserving_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static blacklist isBatteryConversingModeSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method public static blacklist isEmergencyFeaturesSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    return v0
.end method

.method public static whitelist isEmergencyMode(Landroid/content/Context;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v1, 0x0

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

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

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

    :catch_1
    move-exception v2

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

    goto :goto_0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public static blacklist isMinimalBatteryUseMode(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "EmergencyManager"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v4, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "minimal_battery_use"

    invoke-static {v4, v6, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v5, v4

    :cond_0
    move v3, v5

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

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

    goto :goto_1

    :catch_1
    move-exception v4

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

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public static whitelist isUltraPowerSavingModeSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method private static blacklist loadFloatingFeatures()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    return-void
.end method

.method private blacklist registerReceiver()V
    .locals 6

    const-string v0, "registerReceiver"

    const-string v1, "EmergencyManager"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "ro.csc.sales_code"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReceiver Scode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist setMpsmApplicationEnabled()V
    .locals 13

    const-string v0, "setMpsmApplicationEnabled e : "

    const-string v1, "com.sec.android.emergencylauncher"

    const-string v2, "com.sec.android.emergencylauncher"

    const-string v3, "com.sec.android.emergencylauncher.LauncherActivity"

    const-string v4, "com.sec.android.emergencylauncher.launcher.service.BadgeNotificationListner"

    iget-object v5, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "setMpsmApplicationEnabled"

    const-string v8, "EmergencyManager"

    invoke-static {v8, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v7, :cond_0

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string v10, "mpsm package enabled"

    invoke-static {v8, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.emergencylauncher.LauncherActivity"

    invoke-direct {v9, v1, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.emergencylauncher.launcher.service.BadgeNotificationListner"

    invoke-direct {v10, v1, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "This is MPSM mode while reboot"

    invoke-static {v8, v12}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v10, v7, :cond_1

    invoke-virtual {v5, v9, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    if-eq v11, v7, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private declared-synchronized blacklist startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "forwardedIntent"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    const-string v1, "clearBootTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "skipdialog"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "initForEMState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.emergencymode.service"

    const-string v3, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

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

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startService e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private blacklist stopService()V
    .locals 5

    const-class v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.emergencymode.service"

    const-string v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist triggerEmergencyMode(ZIZLandroid/content/Intent;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    const-string v0, "EmergencyManager"

    const-string v1, "req trigger, start Service"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unregisterReceiver()V
    .locals 2

    const-string v0, "EmergencyManager"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public blacklist canSetMode()Z
    .locals 11

    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v8

    move v3, v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    goto :goto_0

    :catch_0
    move-exception v8

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

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "SETUP_WIZARD_UNFINISHED;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-eqz v3, :cond_3

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "LLM_ENABLING;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    const/4 v1, 0x0

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

    :cond_4
    if-nez v1, :cond_5

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

    :cond_5
    return v1
.end method

.method public blacklist checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    return v1

    :cond_3
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist checkInvalidProcess(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    return v1

    :cond_3
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public whitelist checkModeType(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    return v1

    :cond_3
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkModeType(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist getEmergencyState()I
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->getEmergencyState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist getModeType()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "minimal_battery_use"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

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

    const/4 v0, 0x2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "emergency_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isEmergencyMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist isModifying()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isModifying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist isScreenOn()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isScreenOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist isUserPackageBlocked()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isUserPackageBlocked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist needMobileDataBlock()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->needMobileDataBlock()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

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

    return v1
.end method

.method public blacklist readyEmergencyMode()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "EmergencyManager"

    if-eqz v0, :cond_0

    const-string v0, "This is emergency mode."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "This is normal mode."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->registerReceiver()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->setMpsmApplicationEnabled()V

    return-void
.end method

.method public blacklist setUserPackageBlocked(ZLandroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setUserPackageBlocked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserPackageBlocked failed e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
