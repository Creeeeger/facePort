.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$MultiVibratorStateListener;,
        Landroid/os/SystemVibrator$SingleVibratorStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final blacklist mBrokenListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/SystemVibrator$MultiVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibrator$MultiVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedPatternCounts:I

.field private blacklist mSupportedVibrationType:I

.field private blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field private final blacklist mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    iput v0, p0, Landroid/os/SystemVibrator;->mSupportedPatternCounts:I

    iput-object p1, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/VibratorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    iput-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    return-void
.end method

.method private blacklist tryUnregisterBrokenListeners()V
    .locals 4

    iget-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    iget-object v3, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v2, v3}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V

    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Vibrator"

    const-string v3, "Failed to unregister broken listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Vibrator"

    const-string v3, "Listener already registered."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    return-void

    :cond_2
    :try_start_3
    new-instance v2, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    invoke-direct {v2, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    move-object v0, v2

    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, v2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->register(Landroid/os/VibratorManager;)V

    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    nop

    return-void

    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_2

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    throw v1
.end method

.method public whitelist cancel()V
    .locals 2

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->cancel()V

    return-void
.end method

.method public blacklist cancel(I)V
    .locals 2

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->cancel(I)V

    return-void
.end method

.method public blacklist executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 8

    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_1

    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator info; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_2

    sget-object v2, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    iput-object v2, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v2

    :cond_2
    array-length v2, v1

    new-array v2, v2, [Landroid/os/VibratorInfo;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    instance-of v5, v4, Landroid/os/NullVibrator;

    if-eqz v5, :cond_3

    const-string v5, "Vibrator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vibrator manager service not ready; Info not yet available for vibrator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v5

    :cond_3
    invoke-virtual {v4}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    invoke-static {v3, v2}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getMaxMagnitude()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/SystemVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v2, "Failed to check if vibrator exists; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist isVibrating()Z
    .locals 6

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    iget-object v5, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v5, v4}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Vibrator;->isVibrating()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public blacklist performHapticFeedback(IZLjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to perform haptic feedback; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/VibratorManager;->performHapticFeedback(IZLjava/lang/String;Z)V

    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to remove vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1, v2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V

    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist semGetNumberOfSupportedPatterns()I
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v2, "Failed to call semGetNumberOfSupportedPatterns; no vibrator service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/os/SystemVibrator;->mSupportedPatternCounts:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->semGetNumberOfSupportedPatterns()I

    move-result v0

    iput v0, p0, Landroid/os/SystemVibrator;->mSupportedPatternCounts:I

    :cond_1
    iget v0, p0, Landroid/os/SystemVibrator;->mSupportedPatternCounts:I

    return v0
.end method

.method public whitelist semGetSupportedVibrationType()I
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v2, "Failed to call semGetSupportedVibrationType; no vibrator service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->semGetSupportedVibrationType()I

    move-result v0

    iput v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    :cond_1
    iget v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    return v0
.end method

.method public blacklist semIsHapticSupported()Z
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v2, "Failed to call semIsHapticSupported; no vibrator service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->semGetSupportedVibrationType()I

    move-result v0

    iput v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    :cond_1
    iget v0, p0, Landroid/os/SystemVibrator;->mSupportedVibrationType:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public whitelist semIsVibrating()Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/SystemVibrator;->isVibrating()Z

    move-result v0

    return v0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 7

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to set always-on effect; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p4}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v1

    return v1
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 8

    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method
