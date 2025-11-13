.class public Lcom/samsung/isrb/IsrbHooks;
.super Ljava/lang/Object;
.source "IsrbHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;,
        Lcom/samsung/isrb/IsrbHooks$LoggingHandler;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist ISRBSKIPSERVICE:[Ljava/lang/String;

.field static final blacklist ISRB_DETECT_TIME_MS:J = 0x15f90L

.field public static final blacklist ISRB_STEP_HANLDER:I = 0x1

.field public static final blacklist ISRB_STEP_NA:I = 0x0

.field public static final blacklist ISRB_STEP_RESCUEPARTY:I = 0x2

.field private static final blacklist PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field static final blacklist TAG:Ljava/lang/String; = "IsrbHooks"

.field private static greylist mApplicationObject:Landroid/os/IBinder; = null

.field private static volatile blacklist mCrashing:Z = false

.field public static final blacklist mIsrbTriggerCount:I = 0x5

.field private static blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/samsung/isrb/IsrbHooks;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCrashing()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/isrb/IsrbHooks;->mCrashing:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmState()I
    .locals 1

    sget v0, Lcom/samsung/isrb/IsrbHooks;->mState:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmApplicationObject(Landroid/os/IBinder;)V
    .locals 0

    sput-object p0, Lcom/samsung/isrb/IsrbHooks;->mApplicationObject:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmState(I)V
    .locals 0

    sput p0, Lcom/samsung/isrb/IsrbHooks;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckServiceState()Z
    .locals 1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->checkServiceState()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetEnterIdle()Z
    .locals 1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->getEnterIdle()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 41

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/isrb/IsrbHooks;->mCrashing:Z

    .line 66
    const-string v1, "com.android.server.slice.SliceManagerService$Lifecycle"

    const-string v2, "com.android.server.telecom.TelecomLoaderService"

    const-string v3, "com.android.server.privilege.SemPrivilegeManagerService"

    const-string v4, "com.android.server.BluetoothService"

    const-string v5, "com.android.server.connectivity.IpConnectivityMetrics"

    const-string v6, "com.android.server.net.watchlist.NetworkWatchlistService$Lifecycle"

    const-string v7, "com.android.server.PinnerService"

    const-string v8, "com.google.android.startop.iorap.IorapForwardingService"

    const-string v9, "com.android.server.integrity.AppIntegrityManagerService"

    const-string v10, "com.android.server.appprediction.AppPredictionManagerService"

    const-string v11, "com.android.server.testharness.TestHarnessModeService"

    const-string v12, "com.android.server.contentcapture.ContentCaptureManagerService"

    const-string v13, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    const-string v14, "com.android.server.textservices.TextServicesManagerService$Lifecycle"

    const-string v15, "com.android.server.textclassifier.TextClassificationManagerService$Lifecycle"

    const-string v16, "com.android.server.DockObserver"

    const-string v17, "com.android.server.midi.MidiService$Lifecycle"

    const-string v18, "com.android.server.usb.UsbService$Lifecycle"

    const-string v19, "com.android.server.twilight.TwilightService"

    const-string v20, "com.android.server.backup.BackupManagerService$Lifecycle"

    const-string v21, "com.android.server.GestureLauncherService"

    const-string v22, "com.android.server.SensorNotificationService"

    const-string v23, "com.android.server.emergency.EmergencyAffordanceService"

    const-string v24, "com.android.server.print.PrintManagerService"

    const-string v25, "com.android.server.companion.CompanionDeviceManagerService"

    const-string v26, "com.android.server.restrictions.RestrictionsManagerService"

    const-string v27, "com.android.server.cocktailbar.CocktailBarManagerService"

    const-string v28, "com.android.server.cover.CoverManagerService"

    const-string v29, "com.android.server.media.MediaResourceMonitorService"

    const-string v30, "com.android.server.camera.CameraServiceProxy"

    const-string v31, "com.samsung.android.camera.CameraServiceWorker"

    const-string v32, "com.android.server.incident.IncidentCompanionService"

    const-string v33, "com.android.server.MmsServiceBroker"

    const-string v34, "com.android.server.autofill.AutofillManagerService"

    const-string v35, "com.android.server.clipboard.ClipboardService"

    const-string v36, "com.android.server.appbinding.AppBindingService$Lifecycle"

    const-string v37, "com.android.server.soundtrigger_middleware.SoundTriggerMiddlewareService$Lifecycle"

    const-string v38, "com.android.server.soundtrigger.SoundTriggerService"

    const-string v39, "com.android.server.blob.BlobStoreManagerService"

    const-string v40, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/isrb/IsrbHooks;->ISRBSKIPSERVICE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 110
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static greylist canSkip(Ljava/lang/String;)Z
    .locals 2
    .param p0, "servicename"    # Ljava/lang/String;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canSkip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsrbHooks"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v0, Lcom/samsung/isrb/IsrbHooks;->ISRBSKIPSERVICE:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static greylist checkServiceState()Z
    .locals 2

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "state":Z
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 408
    :cond_0
    return v0
.end method

.method public static blacklist getCurrentProcessName()Ljava/lang/String;
    .locals 9

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 456
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "/proc/self/cmdline"

    .line 457
    .local v2, "fn":Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 458
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 459
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 461
    .local v4, "len":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v5

    move v6, v5

    .local v6, "b":I
    if-lez v5, :cond_0

    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 462
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "len":I
    .local v5, "len":I
    int-to-byte v7, v6

    aput-byte v7, v3, v4

    move v4, v5

    goto :goto_0

    .line 464
    .end local v5    # "len":I
    .restart local v4    # "len":I
    :cond_0
    if-lez v4, :cond_1

    .line 465
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    invoke-direct {v5, v3, v7, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    .line 466
    nop

    .line 471
    nop

    .line 473
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    goto :goto_1

    .line 474
    :catch_0
    move-exception v5

    .line 475
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 471
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    .end local v6    # "b":I
    :cond_1
    nop

    .line 473
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 476
    :goto_2
    goto :goto_3

    .line 474
    :catch_1
    move-exception v2

    .line 475
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 468
    :catchall_0
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 471
    .end local v2    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 473
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 479
    :cond_2
    :goto_3
    const/4 v2, 0x0

    return-object v2

    .line 471
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 473
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 476
    goto :goto_4

    .line 474
    :catch_2
    move-exception v3

    .line 475
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 478
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v2
.end method

.method private static greylist getEnterIdle()Z
    .locals 4

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "state":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/isrb/IIsrbManager;->isBootCompleteState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "IsrbHooks"

    const-string v3, "RemoteException in isBootCompleteState : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static greylist init()V
    .locals 7

    .line 385
    const-string/jumbo v0, "persist.sys.rescue_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "isrbmode":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.enable_isrb"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "isrb_boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 387
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "mProcessName":Ljava/lang/String;
    const-string/jumbo v3, "system_server"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    const-string v3, "com.android.networkstack.process"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.phone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    .line 392
    return-void

    .line 395
    :cond_2
    new-instance v3, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;-><init>(Lcom/samsung/isrb/IsrbHooks$LoggingHandler-IA;)V

    .line 396
    .local v3, "loggingHandler":Lcom/samsung/isrb/IsrbHooks$LoggingHandler;
    new-instance v5, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-direct {v5, v6, v3, v4}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler-IA;)V

    invoke-static {v5}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 397
    sput v2, Lcom/samsung/isrb/IsrbHooks;->mState:I

    .line 399
    .end local v1    # "mProcessName":Ljava/lang/String;
    .end local v3    # "loggingHandler":Lcom/samsung/isrb/IsrbHooks$LoggingHandler;
    :cond_3
    return-void
.end method

.method public static blacklist logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 3
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v1, "FATAL EXCEPTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    const-string v1, "PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IsrbHooks"

    invoke-static {v2, v1, p3}, Lcom/samsung/isrb/IsrbHooks;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    return-void
.end method

.method public static greylist saveCrashServiceName(Ljava/lang/String;)V
    .locals 2
    .param p0, "servicename"    # Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveCrashServiceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsrbHooks"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v0, "sys.isrb.crashservice"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public static greylist setFakeTime()V
    .locals 3

    .line 445
    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/isrb/IIsrbManager;->setFakeTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IsrbHooks"

    const-string v2, "RemoteException in setFakeTime : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static greylist useDefaultSetting()V
    .locals 3

    .line 433
    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/isrb/IIsrbManager;->setIsrbEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IsrbHooks"

    const-string v2, "RemoteException in setIsrbEnable : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
