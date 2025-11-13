.class Landroid/companion/virtual/VirtualDeviceInternal$2;
.super Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/companion/virtual/VirtualDeviceInternal;


# direct methods
.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPlaySoundEffect(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmSoundEffectListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;

    invoke-virtual {v4, p1}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->onPlaySoundEffect(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
