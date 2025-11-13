.class public Landroid/os/SystemVibratorManager;
.super Landroid/os/VibratorManager;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibratorManager$SingleVibrator;,
        Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibratorManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/os/IVibratorManagerService;

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mUid:I

.field private blacklist mVibratorIds:[I

.field private final blacklist mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;
    .locals 0

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/VibratorManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mListeners:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/os/SystemVibratorManager;->mUid:I

    nop

    const-string/jumbo v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    return-void
.end method

.method private blacklist cancelVibration(I)V
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_0

    const-string v0, "Failed to cancel vibration; no vibrator manager service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v2}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/os/SystemVibratorManager;->cancelVibration(I)V

    return-void
.end method

.method public blacklist cancel(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager;->cancelVibration(I)V

    return-void
.end method

.method public blacklist executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, ""

    const-string v2, "Failed to executeVibrationDebugCommand"

    const-string v3, "VibratorManager"

    if-nez v0, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorManagerService;->executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public whitelist getDefaultVibrator()Landroid/os/Vibrator;
    .locals 2

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    return-object v0
.end method

.method public whitelist getVibrator(I)Landroid/os/Vibrator;
    .locals 5

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v3, :cond_1

    const-string v3, "VibratorManager"

    const-string v4, "Failed to retrieve vibrator; no vibrator manager service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v3, p1}, Landroid/os/IVibratorManagerService;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    if-eqz v2, :cond_2

    new-instance v3, Landroid/os/SystemVibratorManager$SingleVibrator;

    invoke-direct {v3, p0, v2}, Landroid/os/SystemVibratorManager$SingleVibrator;-><init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V

    move-object v1, v3

    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v3

    move-object v1, v3

    :goto_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getVibratorIds()[I
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v1, :cond_1

    const-string v1, "VibratorManager"

    const-string v2, "Failed to retrieve vibrator ids; no vibrator manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v1}, Landroid/os/IVibratorManagerService;->getVibratorIds()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist performHapticFeedback(IZLjava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_0

    const-string v0, "Failed to perform haptic feedback; no vibrator manager service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget v3, p0, Landroid/os/SystemVibratorManager;->mUid:I

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v5, p0, Landroid/os/SystemVibratorManager;->mPackageName:Ljava/lang/String;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/os/IVibratorManagerService;->performHapticFeedback(IILjava/lang/String;IZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to perform haptic feedback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist semGetNumberOfSupportedPatterns()I
    .locals 4

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v1, 0x0

    const-string v2, "Failed to get semGetNumberOfSupportedPatterns"

    const-string v3, "VibratorManager"

    if-nez v0, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v0}, Landroid/os/IVibratorManagerService;->semGetNumberOfSupportedPatterns()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist semGetSupportedVibrationType()I
    .locals 4

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v1, 0x0

    const-string v2, "VibratorManager"

    if-nez v0, :cond_0

    const-string v0, "Failed to get semGetSupportedVibrationType"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v0}, Landroid/os/IVibratorManagerService;->getSupportedVibratorGroup()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Failed to get semGetNumberOfSupportedPatterns"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 9

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v1, 0x0

    const-string v2, "VibratorManager"

    if-nez v0, :cond_0

    const-string v0, "Failed to set always-on effect; no vibrator manager service."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IVibratorManagerService;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Failed to set always-on effect."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 10

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_0

    const-string v0, "Failed to vibrate; no vibrator manager service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v9, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p4

    invoke-interface/range {v2 .. v9}, Landroid/os/IVibratorManagerService;->vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
