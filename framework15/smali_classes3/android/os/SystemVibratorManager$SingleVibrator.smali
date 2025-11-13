.class final Landroid/os/SystemVibratorManager$SingleVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleVibrator"
.end annotation


# instance fields
.field private final blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field final synthetic blacklist this$0:Landroid/os/SystemVibratorManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    iput-object p2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VibratorManager"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibratorManager$SingleVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 5

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; no vibrator service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VibratorManager"

    const-string v2, "Listener already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VibratorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0}, Landroid/os/SystemVibratorManager;->cancel()V

    return-void
.end method

.method public blacklist cancel(I)V
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/SystemVibratorManager;->cancel(I)V

    return-void
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isVibrating()Z
    .locals 3

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check status of vibrator "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; no vibrator service."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/os/IVibratorManagerService;->isVibrating(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public blacklist performHapticFeedback(IZLjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/SystemVibratorManager;->performHapticFeedback(IZLjava/lang/String;Z)V

    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; no vibrator service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VibratorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 7

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/SystemVibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v1

    return v1
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 7

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/SystemVibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method
