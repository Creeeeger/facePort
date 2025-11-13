.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FoldStateListener"
.end annotation


# instance fields
.field private blacklist mDeviceStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/camera2/CameraManager$DeviceStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFoldedDeviceState:Z

.field private final blacklist mFoldedDeviceStates:[I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 220
    return-void
.end method

.method private declared-synchronized blacklist handleStateChange(I)V
    .locals 5
    .param p1, "state"    # I

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 225
    .local v0, "folded":Z
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceState:Z

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, "invalidListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 228
    .local v3, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 229
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    if-eqz v4, :cond_0

    .line 230
    invoke-interface {v4, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_1

    .line 232
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v3    # "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :goto_1
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_2
    monitor-exit p0

    return-void

    .line 222
    .end local v0    # "folded":Z
    .end local v1    # "invalidListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    monitor-enter p0

    .line 241
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceState:Z

    invoke-interface {p1, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    .line 242
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 240
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$FoldStateListener;
    .end local p1    # "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final blacklist onBaseStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 247
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 248
    return-void
.end method

.method public final blacklist onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 252
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 253
    return-void
.end method
