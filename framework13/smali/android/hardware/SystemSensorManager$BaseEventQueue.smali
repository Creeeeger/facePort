.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# static fields
.field protected static final greylist-max-o OPERATING_MODE_DATA_INJECTION:I = 0x1

.field protected static final greylist-max-o OPERATING_MODE_NORMAL:I


# instance fields
.field private final greylist-max-o mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final greylist-max-o mManager:Landroid/hardware/SystemSensorManager;

.field private greylist-max-o mNativeSensorEventQueue:J

.field protected final greylist-max-o mSensorAccuracies:Landroid/util/SparseIntArray;

.field protected final blacklist mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 775
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 776
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    .line 777
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 784
    if-nez p4, :cond_0

    const-string p4, ""

    .line 785
    :cond_0
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmNativeInstance(Landroid/hardware/SystemSensorManager;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 786
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v5

    .line 787
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v5

    .line 788
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 785
    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v8}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    .line 789
    const-string v1, "BaseEventQueue.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 790
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 791
    return-void
.end method

.method private greylist-max-o disableSensor(Landroid/hardware/Sensor;)I
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 901
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 902
    if-eqz p1, :cond_0

    .line 903
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    move-result v0

    return v0

    .line 902
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o dispose(Z)V
    .locals 5
    .param p1, "finalized"    # Z

    .line 865
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 866
    if-eqz p1, :cond_0

    .line 867
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 869
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 871
    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 872
    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    .line 873
    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    .line 875
    :cond_2
    return-void
.end method

.method private greylist-max-o enableSensor(Landroid/hardware/Sensor;II)I
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    .line 879
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 880
    if-eqz p1, :cond_2

    .line 881
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$misSensorInCappedSet(Landroid/hardware/SystemSensorManager;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1388

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmIsPackageDebuggable(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 884
    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$mhasHighSamplingRateSensorsPermission(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x81c4045

    .line 885
    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use the sampling rate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " microseconds, app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    move-result v0

    return v0

    .line 880
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 879
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o nativeDestroySensorEventQueue(J)V
.end method

.method private static native greylist-max-o nativeDisableSensor(JI)I
.end method

.method private static native greylist-max-o nativeEnableSensor(JIII)I
.end method

.method private static native greylist-max-o nativeFlushSensor(J)I
.end method

.method private static native blacklist nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/SystemSensorManager$BaseEventQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeInjectSensorData(JI[FIJ)I
.end method


# virtual methods
.method public greylist-max-o addSensor(Landroid/hardware/Sensor;II)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "delayUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    .line 800
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 801
    .local v0, "handle":I
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 804
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 805
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 806
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    .line 809
    invoke-direct {p0, p1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 810
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    .line 811
    return v2

    .line 814
    :cond_2
    return v3
.end method

.method protected abstract greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected greylist-max-r dispatchAdditionalInfoEvent(III[F[I)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    .line 915
    return-void
.end method

.method protected abstract greylist-max-r dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract greylist-max-r dispatchSensorEvent(I[FIJ)V
.end method

.method public greylist-max-o dispose()V
    .locals 1

    .line 794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    .line 795
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 858
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 861
    throw v0
.end method

.method public greylist-max-o flush()I
    .locals 4

    .line 846
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 847
    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    move-result v0

    return v0

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o hasSensors()Z
    .locals 2

    .line 852
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected greylist-max-o injectSensorDataBase(I[FIJ)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 896
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInjectSensorData(JI[FIJ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o removeAllSensors()Z
    .locals 5

    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 819
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 820
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 821
    .local v1, "handle":I
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 822
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 823
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 824
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 825
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 818
    .end local v1    # "handle":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public greylist-max-o removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "disable"    # Z

    .line 835
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 836
    .local v0, "handle":I
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 837
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 838
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 839
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 840
    const/4 v1, 0x1

    return v1

    .line 842
    :cond_1
    return v2
.end method

.method protected abstract greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
