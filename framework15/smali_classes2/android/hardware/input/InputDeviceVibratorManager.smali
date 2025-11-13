.class public Landroid/hardware/input/InputDeviceVibratorManager;
.super Landroid/os/VibratorManager;
.source "InputDeviceVibratorManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceVibratorManager"


# instance fields
.field private final blacklist mDeviceId:I

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mToken:Landroid/os/Binder;

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
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/VibratorManager;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iput p1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mToken:Landroid/os/Binder;

    invoke-direct {p0}, Landroid/hardware/input/InputDeviceVibratorManager;->initializeVibrators()V

    return-void
.end method

.method private blacklist initializeVibrators()V
    .locals 9

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal;->getVibratorIds(I)[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    aget v5, v2, v3

    new-instance v6, Landroid/hardware/input/InputDeviceVibrator;

    iget v7, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    aget v8, v2, v3

    invoke-direct {v6, v7, v8}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->cancelVibrate(ILandroid/os/IBinder;)V

    return-void
.end method

.method public blacklist cancel(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceVibratorManager;->cancel()V

    return-void
.end method

.method public blacklist executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist getDefaultVibrator()Landroid/os/Vibrator;
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getVibrator(I)Landroid/os/Vibrator;
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getVibratorIds()[I
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputDeviceVibratorManager;->initializeVibrators()V

    :cond_0
    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist semGetNumberOfSupportedPatterns()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetSupportedVibrationType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/input/InputManagerGlobal;->vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    return-void
.end method
