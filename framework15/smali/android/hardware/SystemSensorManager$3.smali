.class Landroid/hardware/SystemSensorManager$3;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupVirtualDeviceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onVirtualDeviceClosed(I)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v4, v3}, Landroid/hardware/SystemSensorManager;->-$$Nest$mcleanupSensorConnection(Landroid/hardware/SystemSensorManager;Landroid/hardware/Sensor;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmRuntimeSensorListByDeviceByType(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
