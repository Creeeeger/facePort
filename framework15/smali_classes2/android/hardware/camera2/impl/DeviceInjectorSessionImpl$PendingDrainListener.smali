.class Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;
.super Ljava/lang/Object;
.source "DeviceInjectorSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingDrainListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist onDrained()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmInterfaceLock(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$fgetmStopDrainer(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
